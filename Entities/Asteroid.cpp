//
// Created by Jody on 6/12/2019.
//

#include "Asteroid.h"
#include "../Utility/Vector2F.h"
#include <cmath>
#include <iostream>

void Asteroid::Update(float deltaTime) {
    sideManager.GetMain()->rotate(angularVelocity * deltaTime);
    //move(velocity * deltaTime);

    //TODO: I shouldn't have to worry about doing this...
    sideManager.UpdateTransform();
}

void Asteroid::draw(sf::RenderTarget &target, sf::RenderStates states) const {
    target.draw(*sideManager.GetMain(), states);
}

//TODO: Make a factory or window class so that the EntitySideManager can use it's map methods.

Asteroid::Asteroid(sf::Vector2f position, sf::Vector2f initVelocity, sf::RenderTarget *window, float radius,
                   int angleSubSections) : BaseEntity(window), velocity(initVelocity) {
    this->radius = radius;

    auto shape = sideManager.PutEntity(EntityWrapManager::MIDDLE, new sf::ConvexShape(angleSubSections));

    {
        // Generate asteroid shape...
        float angleIntervals = (2.0f * (float) M_PI) / (float) angleSubSections;

        for (int i = 0; i < angleSubSections; i++) {
            sf::Vector2f vPosition = sf::Vector2f(0, 0);
            vPosition.x = std::cos((float) i * angleIntervals) * radius;
            vPosition.y = std::sin((float) i * angleIntervals) * radius;

            // As long as the inputted radius on the influence is less than half the radius of the asteroid itself,
            // the shape should always be convex (I think) :shrug:

            Vector2F randomInfluence = Vector2F::RandomOnCircle(10.0f);

            vPosition += randomInfluence;
            shape->setPoint(i, vPosition);
        }

        shape->setFillColor(sf::Color::Blue);
        shape->setOutlineColor(sf::Color::White);
    }

    angularVelocity = 100.0f;
    velocity = initVelocity;
    shape->setPosition(position);

    sideManager.InitSides();
}

SAT::Projection Asteroid::generateProjectionAlong(Vector2F axis) {
    return SAT::Projection(axis, sideManager.GetWorldVertices(),
                           sideManager[EntityWrapManager::MIDDLE]->getPointCount());
}

std::vector<Vector2F> Asteroid::getSatAxes() {
    std::vector<Vector2F> axes;
    auto shape = sideManager.GetWorldVertices();
    for (int i = 0; i < shape.size(); i++) {
        auto v1 = shape.at(i);
        auto v2 = shape.at((i + 1) >= shape.size() ? 0 : i + 1);

        axes.push_back(((Vector2F) (v1 - v2)).GetNormal());
    }
    return axes;
}

std::string Asteroid::ClassName() {
    return "Asteroid";
}