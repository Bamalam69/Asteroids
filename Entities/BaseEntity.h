//
// Created by Jody on 22/11/2019.
//

#ifndef MULTIASTEROIDS_BASEENTITY_H
#define MULTIASTEROIDS_BASEENTITY_H

#include <SFML/System/String.hpp>
#include <SFML/Graphics/Drawable.hpp>
#include <SFML/Graphics/Transformable.hpp>
#include <memory>
#include <optional>
#include <vector>
#include "../Utility/Vector2F.h"
#include "../Projection.h"
#include "EntityWrapManager.h"
#include <map>

class BaseEntity : public sf::Drawable {
public:
    virtual void Update(float deltaTime) = 0;

    virtual SAT::Projection generateProjectionAlong(Vector2F axis) = 0;

    virtual std::vector<Vector2F> getSatAxes() = 0;

    virtual std::string ClassName() = 0;

    void SetColour(sf::Color colour) { sideManager[EntityWrapManager::MIDDLE]->setFillColor(colour); };

    typedef std::unique_ptr<BaseEntity> Ptr;
protected:
    explicit BaseEntity(sf::RenderTarget *window) : sideManager(window) {}

    EntityWrapManager sideManager;
};

#endif //MULTIASTEROIDS_BASEENTITY_H
