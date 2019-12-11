//
// Created by Jody on 27/11/2019.
//

#include "Vector2F.h"
#include <cmath>
#include <iostream>
#include "Random.h"

Vector2F& Vector2F::Rotate(float angle) {
    float ca = std::cos(angle);
    float sa = std::sin(angle);

    this->x = ca*this->x - sa*this->y;
    this->y = sa*this->x + ca*this->y;

    return *this;
}

Vector2F::Vector2F(sf::Vector2f &other) {
    this->x = other.x;
    this->y = other.y;
}

float Vector2F::Dot(Vector2F left, Vector2F right) {
    auto lNorm = left.Normalized();
    auto rNorm = right.Normalized();
    return lNorm.x * rNorm.x + lNorm.y * rNorm.y;
}

float Vector2F::Magnitude() {
    return std::sqrt((x * x) + (y * y));
}

Vector2F Vector2F::Normalized() {
    return static_cast<Vector2F>(*this / Magnitude());
}

Vector2F::Vector2F() {
    x = y = 0;
}

Vector2F::Vector2F(sf::Vector2<float> vector2) {
    this->x = vector2.x;
    this->y = vector2.y;
}

Vector2F Vector2F::RandomOnCircle(float radius) {
    Vector2F x;
    // Gen random float between 0 and 2 pi. Cred: https://stackoverflow.com/a/686373/10774496
    float angle = Random::Float(0.0f, 2 * M_PI);
    x.x = std::cos(angle) * radius;
    x.y = std::sin(angle) * radius;
    return x;
}

Vector2F Vector2F::GetNormal() {
    return Vector2F(-this->y, x);
}

Vector2F::Vector2F(float x, float y) : Vector2(x, y) {}
