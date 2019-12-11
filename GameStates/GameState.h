//
// Created by Jody on 23/11/2019.
//

#ifndef MULTIASTEROIDS_GAMESTATE_H
#define MULTIASTEROIDS_GAMESTATE_H

#include <SFML/Graphics/RenderTarget.hpp>
#include <vector>
#include <iostream>
#include "../Entities/BaseEntity.h"

class GameState {
public:
    void draw(sf::RenderTarget &target);

    void UpdateEntities(float deltaTime);

    virtual void HandleInput() = 0;

    void UpdateState(float d);

protected:
    struct CollisionInfo {
        explicit CollisionInfo(bool _col = false, Vector2F _mtv = Vector2F(0, 0)) {
            collisionActive = _col;
            mtv = _mtv;
        }

        explicit operator bool() const {
            return collisionActive;
        }

        bool collisionActive;
        Vector2F mtv;
    };

    void ResolveCollisions();

    CollisionInfo CheckSATIntersection(const BaseEntity::Ptr &ent1, const BaseEntity::Ptr &ent2);

    template<class T>
    void AddEntity(std::unique_ptr<T> entity);

    std::vector<BaseEntity::Ptr> entities;
};

template<class T>
void GameState::AddEntity(std::unique_ptr<T> entity) {
    entities.push_back(std::move(entity));
}


#endif //MULTIASTEROIDS_GAMESTATE_H
