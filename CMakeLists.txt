cmake_minimum_required(VERSION 3.14)
project(MultiAsteroids)

set(CMAKE_CXX_STANDARD 17)

set(SFML_STATIC_LIBRARIES TRUE)

find_package(SFML 2.5 COMPONENTS graphics system REQUIRED)

add_executable(MultiAsteroids main.cpp Entities/BaseEntity.cpp Entities/BaseEntity.h Entities/Ship.cpp Entities/Ship.h GameStates/GameState.cpp GameStates/GameState.h GameStates/GameStateSingleplayer.cpp GameStates/GameStateSingleplayer.h Utility/Vector2F.cpp Utility/Vector2F.h InputManager.cpp InputManager.h Entities/Asteroid.cpp Entities/Asteroid.h Utility/Random.cpp Utility/Random.h Projection.cpp Projection.h Entities/EntityWrapManager.cpp Entities/EntityWrapManager.h)

target_link_libraries(MultiAsteroids sfml-graphics sfml-system)