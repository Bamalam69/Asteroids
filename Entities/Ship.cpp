//
// Created by Jody on 22/11/2019.
//

#include "Ship.h"
#include <SFML/Window/Keyboard.hpp>
#include <cmath>
#include <iostream>
#include "../Utility/Vector2F.h"
#include "../InputManager.h"

Ship::Ship(sf::Vector2f position, sf::RenderTarget *window, float scale) : BaseEntity(window), window(window)  {

    auto middle = sideManager.PutEntity(EntityWrapManager::SIDES::MIDDLE, new sf::ConvexShape(3));
    middle->setPoint(0, sf::Vector2f(-scale, -scale));
    middle->setPoint(1, sf::Vector2f(scale, 0.0f));
    middle->setPoint(2, sf::Vector2f(-scale, scale));
    middle->setOutlineThickness(1.0f);
    middle->setFillColor(sf::Color::Transparent);
    middle->setPosition(position);

    //TODO: Move initializing copies of main to EntitySideManager...
    //TODO: GIT REPO!!!!!!!!

    rotateSpeed = 175.0f;
    movementSpeed = 0.15f;
    dragFraction = 0.0002f;

    sideManager.InitSides();
}

void Ship::Update(float deltaTime) {
    auto middle = sideManager[EntityWrapManager::MIDDLE];

    if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::A)) {
        middle->rotate(deltaTime * -rotateSpeed);
    }
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::D)) {
        middle->rotate(deltaTime * rotateSpeed);
    }

    if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::W)) {
        // Get forward direction...
        sf::Vector2f forward = GetForward();

        velocity += movementSpeed * forward;
    }
    if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::S)) {
        // Get forward direction...
        sf::Vector2f forward = GetForward();

        velocity += movementSpeed * -forward;
    }

    if (InputManager::OnKeyPressed(sf::Keyboard::Space)) {
        // Shoot bullet...
    }

    // TODO: Updating window size...

    middle->move(velocity * deltaTime);
    velocity -= velocity * dragFraction;

    sideManager.UpdateTransform();
}

void Ship::draw(sf::RenderTarget &target, sf::RenderStates states) const {
    sideManager.DrawSides(target, states);
}

sf::Vector2f Ship::GetForward() {
    float angle = sideManager.GetMain()->getRotation() * (float) M_PI / 180.0f;
    sf::Vector2f forward;
    forward.x = std::cos(angle);
    forward.y = std::sin(angle);

    return forward;
}

//TODO: Try out shader edge wrapping, where if the vertex is not on the screen, position.x = screenwidth % vertex.x, & same for y...

SAT::Projection Ship::generateProjectionAlong(Vector2F axis) {
    return SAT::Projection(axis, sideManager.GetWorldVertices(), cornerCount);
}

std::vector<Vector2F> Ship::getSatAxes() {
    auto corners = sideManager.GetWorldVertices();
    std::vector<Vector2F> axes;
    for (int i = 0; i < cornerCount; i++) {
        auto corner1 = corners[i];
        auto corner2 = corners[(i + 1) > cornerCount ? 0 : (i + 1)];

        axes.push_back(((Vector2F) (corner1 - corner2)).GetNormal());
    }
    return axes;
}

std::string Ship::ClassName() {
    return "Ship";
}
