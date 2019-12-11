//
// Created by Jody on 23/11/2019.
//

#include "GameStateSingleplayer.h"
#include "../Entities/Ship.h"
#include "../Entities/Asteroid.h"

GameStateSingleplayer::GameStateSingleplayer(sf::Vector2f windowSize,  sf::RenderTarget* window) {
    AddEntity(std::make_unique<Asteroid>(windowSize / 2.0f, Vector2F::RandomOnCircle(100.0f), window));
    AddEntity(std::make_unique<Ship>(windowSize / 2.0f, window));
}

void GameStateSingleplayer::HandleInput() {}