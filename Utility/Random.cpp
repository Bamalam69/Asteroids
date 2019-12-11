//
// Created by Jody on 11/12/2019.
//

#include <ctime>
#include "Random.h"

std::default_random_engine Random::engine;

int Random::Int() {
    std::uniform_int_distribution<int> distribution;
    return distribution(engine);
}

int Random::Int(int _min, int _max) {
    std::uniform_int_distribution<int> distribution(_min, _max);
    return distribution(engine);
}

float Random::Float(float _min, float _max) {
    return ((float)rand() / RAND_MAX) * (_max - _min) + _min;
}

void Random::CreateSeed() {
    std::srand(std::time(0));
}
