//
// Created by Jody on 23/11/2019.
//

#ifndef MULTIASTEROIDS_GAMESTATESINGLEPLAYER_H
#define MULTIASTEROIDS_GAMESTATESINGLEPLAYER_H

#include "GameState.h"

class GameStateSingleplayer : public GameState {
public:
    explicit GameStateSingleplayer(sf::Vector2f windowSize, sf::RenderTarget* window);

    void HandleInput() override;
};


#endif //MULTIASTEROIDS_GAMESTATESINGLEPLAYER_H
