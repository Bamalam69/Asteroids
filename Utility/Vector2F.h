//
// Created by Jody on 27/11/2019.
//

#ifndef MULTIASTEROIDS_VECTOR2F_H
#define MULTIASTEROIDS_VECTOR2F_H

#include <SFML/System.hpp>
#include <random>

class Vector2F : public sf::Vector2f {
public:
    Vector2F();

    explicit Vector2F(sf::Vector2f &other);

    Vector2F(sf::Vector2f vector2); // NOLINT(google-explicit-constructor,hicpp-explicit-conversions)

    Vector2F(float x, float y);

    Vector2F &Rotate(float angle);

    static float Dot(Vector2F left, Vector2F right);

    Vector2F Normalized();

    static Vector2F RandomOnCircle(float radius = 1.0f);

    float Magnitude();

    Vector2F GetNormal();

};


#endif //MULTIASTEROIDS_VECTOR2F_H
