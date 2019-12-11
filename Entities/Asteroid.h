//
// Created by Jody on 6/12/2019.
//

#ifndef MULTIASTEROIDS_ASTEROID_H
#define MULTIASTEROIDS_ASTEROID_H

#include <SFML/Graphics.hpp>
#include "BaseEntity.h"

class Asteroid : public BaseEntity {
public:
    Asteroid(sf::Vector2f position, sf::Vector2f initVelocity, sf::RenderTarget* window, float radius = 50.0f, int angleSubSections = 7);

    void Update(float deltaTime) override;

    SAT::Projection generateProjectionAlong(Vector2F axis) override;

    std::vector<Vector2F> getSatAxes() override;

    std::string ClassName() override;

protected:
    void draw(sf::RenderTarget &target, sf::RenderStates states) const override;

private:
    sf::Vector2f velocity;
    float angularVelocity;
    float radius;
};


#endif //MULTIASTEROIDS_ASTEROID_H
