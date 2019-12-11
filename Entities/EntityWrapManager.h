//
// Created by Jody on 12/12/2019.
//

#ifndef MULTIASTEROIDS_ENTITYWRAPMANAGER_H
#define MULTIASTEROIDS_ENTITYWRAPMANAGER_H

#include <map>
#include <SFML/Graphics/RenderTarget.hpp>
#include <SFML/Graphics/ConvexShape.hpp>

//TODO: Use this class as the sides's getter and manipulator...
//TODO: Make BaseEntity have the side manager so screen wrapping is common across all entities...

class EntityWrapManager {
public:
    explicit EntityWrapManager(sf::RenderTarget *window);

    void InitSides();

    ~EntityWrapManager() {
        for (auto &drawable : sides) {
            delete drawable.second;
        }
    }

    enum SIDES {
        LEFT = 0,
        BOTTOM = 1,
        RIGHT = 2,
        TOP = 3,
        MIDDLE = 4,
        MAX = 5
    };

    sf::ConvexShape *PutEntity(const SIDES side, sf::ConvexShape *drawable) {
        sides.emplace(side, drawable);
        return drawable;
    }

    sf::ConvexShape* operator[] (SIDES side) const {
        return sides.at(side);
    }

    [[nodiscard]] sf::ConvexShape *GetMain() const { return sides.at(MIDDLE); }

    void DoScreenWrap();

    void UpdateTransform();

    void DrawSides(sf::RenderTarget &target, sf::RenderStates states) const;

    std::vector<sf::Vector2f> GetWorldVertices(SIDES side = SIDES::MIDDLE);

//private:
    bool IsEntirelyOnScreen(SIDES side);

    std::map<SIDES, sf::ConvexShape *> sides;

    bool IsWorldPointOnScreen(sf::Vector2f point);

    sf::RenderTarget *window;
};

#endif //MULTIASTEROIDS_ENTITYWRAPMANAGER_H
