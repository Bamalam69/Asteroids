//
// Created by Jody on 3/12/2019.
//

#include "InputManager.h"
#include <iostream>

std::map<sf::Keyboard::Key, KeyState> InputManager::states;

// TODO: Compare velocity to corner's direction and place ship appropriately.

bool InputManager::IsKeyPress(sf::Keyboard::Key key) {
    return states.at(key).Down;
}

bool InputManager::OnKeyPressed(sf::Keyboard::Key key) {
    return states.at(key).JustPressed;
}

bool InputManager::OnKeyReleased(sf::Keyboard::Key key) {
    return states.at(key).JustReleased;
}

void InputManager::UpdateKeyState(sf::Event event) {
    switch (event.type) {
        case sf::Event::KeyPressed:
            UpdatePressedKeyState(event.key.code);
            break;
        case sf::Event::KeyReleased:
            UpdateReleasedKeyState(event.key.code);
            break;
    }
}

void InputManager::Init() {
    // Filling states with unitialized KeyStates...
    for (int i = 0; i < sf::Keyboard::Key::KeyCount; i++) {
        states.emplace(std::pair((sf::Keyboard::Key) i, KeyState()));
    }
}

void InputManager::UpdatePressedKeyState(sf::Keyboard::Key key) {
    try {
        KeyState &state = states.at(key);
        state.Down = state.JustPressed = true;
        state.JustReleased = false;
    } catch (std::exception e) {
        std::cout << "Key does not exist..." << std::endl;
    }
}

void InputManager::UpdateKeyStates() {
    for (auto &pair : states) {
        KeyState &state = pair.second;
        state.JustPressed = state.JustReleased = false;
    }
}

void InputManager::UpdateReleasedKeyState(sf::Keyboard::Key key) {
    try {
        KeyState &state = states.at(key);
        state.Down = state.JustPressed = false;
        state.JustReleased = true;
    } catch (std::exception e) {
        std::cout << "Key does not exist..." << std::endl;
    }
}
