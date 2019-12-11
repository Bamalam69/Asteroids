#include <iostream>
#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>
#include <stack>
#include "Entities/BaseEntity.h"
#include "Entities/Ship.h"
#include "GameStates/GameState.h"
#include "GameStates/GameStateSingleplayer.h"
#include "InputManager.h"
#include "Utility/Random.h"

std::stack<GameState *> states;

void pushState(GameState *state);
void popState();
void changeState(GameState *state);
GameState *peekState();

int WinMain() {
    sf::RenderWindow window(sf::VideoMode(800, 600), "MultiAsteroids");
    InputManager::Init();
    Random::CreateSeed();

    sf::Vector2f windowSize = sf::Vector2f((float)window.getSize().x, (float)window.getSize().y);

    pushState(new GameStateSingleplayer(windowSize, &window));

    sf::Clock timer;
    while (window.isOpen()) {
        sf::Event e {};
        while (window.pollEvent(e)) {
            if (e.type == sf::Event::Closed) {
                window.close();
            } else if (e.type == sf::Event::EventType::KeyPressed)
            {
                InputManager::UpdateKeyState(e);
            }
        }

        window.clear(sf::Color::Black);

        InputManager::UpdateKeyStates();

        sf::Time current = timer.restart();
        GameState* currentState = peekState();
        currentState->UpdateState(current.asSeconds());
        currentState->draw(window);

        window.display();
    }

    return 0;
}

void pushState(GameState *state) {
    states.push(state);
}

void popState() {
    delete states.top();
    states.pop();
}

void changeState(GameState *state) {
    if (!states.empty()) {
        popState();
    }
    pushState(state);
}

GameState *peekState() {
    if (states.empty()) return nullptr;
    return states.top();
}