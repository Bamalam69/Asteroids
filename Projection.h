//
// Created by Jody on 11/12/2019.
//

#ifndef MULTIASTEROIDS_PROJECTION_H
#define MULTIASTEROIDS_PROJECTION_H

#include <SFML/Graphics/Vertex.hpp>
#include "Utility/Vector2F.h"

namespace SAT {
    class Projection {
    public:
        explicit Projection(Vector2F axis, sf::Vertex *vertices, int count);
        explicit Projection(Vector2F axis, std::vector<sf::Vector2f> vertexPositions, int count);

        Projection() {}

        Projection(float min, float max);

        bool overlaps(Projection &other);

        float getOverlap(Projection &other);

        float min, max;
    };
}

#endif //MULTIASTEROIDS_PROJECTION_H
