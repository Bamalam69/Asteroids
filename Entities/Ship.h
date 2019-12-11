//
// Created by Jody on 22/11/2019.
//

#ifndef MULTIASTEROIDS_SHIP_H
#define MULTIASTEROIDS_SHIP_H

#include <SFML/Graphics/ConvexShape.hpp>
#include <map>
#include "BaseEntity.h"
#include "../Utility/Vector2F.h"

class Ship : public BaseEntity {
public:
    explicit Ship(sf::Vector2f position, sf::RenderTarget *window, float scale = 15.0f);

    void draw(sf::RenderTarget& target, sf::RenderStates states) const override;

    void Update(float deltaTime) override;

    SAT::Projection generateProjectionAlong(Vector2F axis) override;

    std::vector<Vector2F> getSatAxes() override;

    std::string ClassName() override;

private:
    const int cornerCount = 3;

    sf::Vector2f GetForward();

    float rotateSpeed;
    float movementSpeed;
    float dragFraction;

    sf::Vector2f velocity;

    sf::RenderTarget* window;
};


#endif //MULTIASTEROIDS_SHIP_H
