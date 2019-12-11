//
// Created by Jody on 11/12/2019.
//

#include "Projection.h"
#include <cmath>

namespace SAT {
    bool Projection::overlaps(Projection &other) {
        return !(this->min > other.max || other.min > this->max);
    }

    float Projection::getOverlap(SAT::Projection &other) {
        if (overlaps(other)) {
            return std::min(max, other.max) - std::max(min, other.min);
        }
        return 0.0f;
    }

    Projection::Projection(Vector2F axis, sf::Vertex *vertices, int count) {
        min = std::numeric_limits<float>::max();
        max = std::numeric_limits<float>::min();
        for (int i = 0; i < count; i++) {
            sf::Vertex vertex = vertices[i];
            Vector2F pos = vertex.position;
            float x = Vector2F::Dot(pos, axis);
            if (x < min)
                min = x;
            else if (x > max)
                max = x;
        }
    }

    Projection::Projection(float min, float max) {
        this->min = min;
        this->max = max;
    }

    Projection::Projection(Vector2F axis, std::vector<sf::Vector2f> vertexPositions, int count) {
        min = std::numeric_limits<float>::max();
        max = std::numeric_limits<float>::min();
        for (int i = 0; i < count; i++) {
            Vector2F pos = vertexPositions[i];
            float x = Vector2F::Dot(pos, axis);
            if (x < min)
                min = x;
            else if (x > max)
                max = x;
        }
    }
}
