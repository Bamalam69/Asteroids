//
// Created by Jody on 11/12/2019.
//

#ifndef MULTIASTEROIDS_RANDOM_H
#define MULTIASTEROIDS_RANDOM_H

#include <random>

class Random {
public:
    static void CreateSeed();

    static int Int();
    static int Int(int min, int max);
    static float Float(float min, float max);

private:
    static std::default_random_engine engine;
};


#endif //MULTIASTEROIDS_RANDOM_H
