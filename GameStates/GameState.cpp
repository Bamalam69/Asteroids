//
// Created by Jody on 23/11/2019.
//

#include "GameState.h"
#include "../Entities/Asteroid.h"

void GameState::draw(sf::RenderTarget &target) {
    for (BaseEntity::Ptr &entity : entities) {
        target.draw(*entity);
    }
}

void GameState::UpdateEntities(float deltaTime) {
    for (BaseEntity::Ptr &entity : entities) {
        entity->Update(deltaTime);
    }
}

void GameState::UpdateState(float d) {
    UpdateEntities(d);
    ResolveCollisions();
}


void GameState::ResolveCollisions() {
    for (const BaseEntity::Ptr &primaryEnt : entities) {
        for (const BaseEntity::Ptr &secondaryEnt : entities) {
            if (primaryEnt == secondaryEnt) continue;

            // Check bounding box first...
            {

            }

            //Check if colliding (using sat)...
            if (auto mtv = CheckSATIntersection(primaryEnt, secondaryEnt)) {
                // Then resolve it...
                primaryEnt->SetColour(sf::Color::Cyan);
                secondaryEnt->SetColour(sf::Color::Magenta);
            } else {
                primaryEnt->SetColour(sf::Color::Transparent);
                primaryEnt->SetColour(sf::Color::Transparent);
            }
        }
    }
}

#pragma clang diagnostic push
#pragma ide diagnostic ignored "MemberFunctionCanBeStatic"
#pragma ide diagnostic ignored "readability-convert-member-functions-to-static"

GameState::CollisionInfo
GameState::CheckSATIntersection(const BaseEntity::Ptr &ent1, const BaseEntity::Ptr &ent2) {
    float minOverlap = std::numeric_limits<float>::max(); // Large value :o
    Vector2F mtvAxis;

    // Get all axes to test on...
    auto axes = ent1->getSatAxes();
    auto axes2 = ent2->getSatAxes();

    // They both exist so merge em together to loop through...
    axes.insert(axes.end(), axes2.begin(), axes2.end());

    // Project shapes onto axis...
    for (auto axis : axes) {
        auto projection1 = ent1->generateProjectionAlong(axis);
        auto projection2 = ent2->generateProjectionAlong(axis);
        if (!projection1.overlaps(projection2)) {
            return CollisionInfo();
        } else {
            float thisOverlap = projection1.getOverlap(projection2);

            if (thisOverlap < minOverlap) {
                minOverlap = thisOverlap;
                mtvAxis = axis;
            }
        }
    }

    return CollisionInfo(true, mtvAxis.Normalized() * minOverlap);
}

#pragma clang diagnostic pop