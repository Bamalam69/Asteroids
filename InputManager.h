//
// Created by Jody on 3/12/2019.
//

#ifndef MULTIASTEROIDS_INPUTMANAGER_H
#define MULTIASTEROIDS_INPUTMANAGER_H


#include <SFML/Window/Keyboard.hpp>
#include <SFML/Window/Event.hpp>
#include <map>

struct KeyState {
    bool Down, JustReleased, JustPressed;
};

class InputManager {
public:
    static void Init();

    static bool IsKeyPress(sf::Keyboard::Key key);
    static bool OnKeyPressed(sf::Keyboard::Key key);
    static bool OnKeyReleased(sf::Keyboard::Key key);

    static void UpdateKeyState(sf::Event event);
    static void UpdateKeyStates();

private:
    static std::map<sf::Keyboard::Key, KeyState> states;

    static void UpdatePressedKeyState(sf::Keyboard::Key key);

    static void UpdateReleasedKeyState(sf::Keyboard::Key key);
};


#endif //MULTIASTEROIDS_INPUTMANAGER_H
