//
// Created by Jody on 12/12/2019.
//

#include "EntityWrapManager.h"
#include "../Utility/Vector2F.h"

void EntityWrapManager::DoScreenWrap() {
// Checking if one of the drawables is on screen instead of the main one.
    {
        // If main isn't on screen, check others...
        if (!IsEntirelyOnScreen(EntityWrapManager::SIDES::MIDDLE)) {

            // Loop through all drawables except the middle one...
            for (auto &pair : sides) {
                SIDES currentSide = pair.first;

                if (currentSide == MIDDLE)
                    continue;

                if (IsEntirelyOnScreen(currentSide)) {
                    std::swap(pair.second, sides[MIDDLE]);
                    break;
                }
            }
        }
    }
}

void EntityWrapManager::UpdateTransform() {
    sf::Vector2f windowSize = (sf::Vector2f) window->getSize();

    auto middle = operator[](MIDDLE);

    operator[](EntityWrapManager::LEFT)->setPosition(
            -windowSize.x + middle->getPosition().x,
            middle->getPosition().y);

    operator[](EntityWrapManager::RIGHT)->setPosition(
            windowSize.x + middle->getPosition().x,
            middle->getPosition().y);

    operator[](EntityWrapManager::TOP)->setPosition(
            middle->getPosition().x,
            -windowSize.y + middle->getPosition().y);

    operator[](EntityWrapManager::BOTTOM)->setPosition(
            middle->getPosition().x,
            windowSize.y +
            middle->getPosition().y);

    for (auto &pair : sides) {
        if (pair.first != MIDDLE) {
            pair.second->setRotation(sides.at(MIDDLE)->getRotation());
        }
    }
}

std::vector<sf::Vector2f> EntityWrapManager::GetWorldVertices(EntityWrapManager::SIDES side) {
    // idk why static is needed. :shrug:
    //TODO: make sure returned array is deleted...
    sf::ConvexShape *shape = sides.at(side);
    std::vector<sf::Vector2f> corners;

    for (int i = 0; i < shape->getPointCount(); i++) {
        auto localCorner = (Vector2F) (shape->getPoint(i));
        sf::Vector2f rotatedCorner = localCorner.Rotate(sides.at(MIDDLE)->getRotation());
        sf::Vector2f worldCorner =
                rotatedCorner + shape->getPosition();
        corners.push_back(worldCorner);
    }
    // TODO: add another side: CENTER.
    return corners;
}

EntityWrapManager::EntityWrapManager(sf::RenderTarget *target) {
    this->window = target;
}

void EntityWrapManager::DrawSides(sf::RenderTarget &target, sf::RenderStates states) const {
    for (int i = 0; i < sides.size(); i++) {
        target.draw(*sides.at((SIDES) i));
    }
}

bool EntityWrapManager::IsEntirelyOnScreen(EntityWrapManager::SIDES side) {
    std::vector<sf::Vector2f> corners = GetWorldVertices(side);

    // TODO: Fix windowViewport.contains() returning false even when main position is being passed.

    for (int i = 0; i < 3; i++) {
        if (!IsWorldPointOnScreen(corners[i])) {
            return false;
        }
    }
    return true;
}

bool EntityWrapManager::IsWorldPointOnScreen(sf::Vector2f point) {
    // world to screen coords...
    sf::Vector2i screenCoords = window->mapCoordsToPixel(point);
    sf::IntRect viewport = window->getViewport(window->getView());

    // TODO: Why mainDrawable and the checked side keeps swapping.

    // Check for on screen...
    return !(screenCoords.x < viewport.left || screenCoords.x > viewport.left + viewport.width ||
             screenCoords.y < viewport.top || screenCoords.y > viewport.top + viewport.height);
}

void EntityWrapManager::InitSides() {
    auto middle = operator[](SIDES::MIDDLE);

    PutEntity(EntityWrapManager::SIDES::LEFT, new sf::ConvexShape(*middle));

    PutEntity(EntityWrapManager::SIDES::BOTTOM, new sf::ConvexShape(*middle));

    PutEntity(EntityWrapManager::SIDES::RIGHT, new sf::ConvexShape(*middle));

    PutEntity(EntityWrapManager::SIDES::TOP, new sf::ConvexShape(*middle));
}
