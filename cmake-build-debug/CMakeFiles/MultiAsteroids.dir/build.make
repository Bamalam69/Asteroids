# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\Jody\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\193.5233.103\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\Jody\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\193.5233.103\bin\cmake\win\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\DEV\MultiAsteroids

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\DEV\MultiAsteroids\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MultiAsteroids.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MultiAsteroids.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MultiAsteroids.dir/flags.make

CMakeFiles/MultiAsteroids.dir/main.cpp.obj: CMakeFiles/MultiAsteroids.dir/flags.make
CMakeFiles/MultiAsteroids.dir/main.cpp.obj: CMakeFiles/MultiAsteroids.dir/includes_CXX.rsp
CMakeFiles/MultiAsteroids.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\DEV\MultiAsteroids\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MultiAsteroids.dir/main.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MultiAsteroids.dir\main.cpp.obj -c D:\DEV\MultiAsteroids\main.cpp

CMakeFiles/MultiAsteroids.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MultiAsteroids.dir/main.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\DEV\MultiAsteroids\main.cpp > CMakeFiles\MultiAsteroids.dir\main.cpp.i

CMakeFiles/MultiAsteroids.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MultiAsteroids.dir/main.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\DEV\MultiAsteroids\main.cpp -o CMakeFiles\MultiAsteroids.dir\main.cpp.s

CMakeFiles/MultiAsteroids.dir/Entities/BaseEntity.cpp.obj: CMakeFiles/MultiAsteroids.dir/flags.make
CMakeFiles/MultiAsteroids.dir/Entities/BaseEntity.cpp.obj: CMakeFiles/MultiAsteroids.dir/includes_CXX.rsp
CMakeFiles/MultiAsteroids.dir/Entities/BaseEntity.cpp.obj: ../Entities/BaseEntity.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\DEV\MultiAsteroids\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MultiAsteroids.dir/Entities/BaseEntity.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MultiAsteroids.dir\Entities\BaseEntity.cpp.obj -c D:\DEV\MultiAsteroids\Entities\BaseEntity.cpp

CMakeFiles/MultiAsteroids.dir/Entities/BaseEntity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MultiAsteroids.dir/Entities/BaseEntity.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\DEV\MultiAsteroids\Entities\BaseEntity.cpp > CMakeFiles\MultiAsteroids.dir\Entities\BaseEntity.cpp.i

CMakeFiles/MultiAsteroids.dir/Entities/BaseEntity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MultiAsteroids.dir/Entities/BaseEntity.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\DEV\MultiAsteroids\Entities\BaseEntity.cpp -o CMakeFiles\MultiAsteroids.dir\Entities\BaseEntity.cpp.s

CMakeFiles/MultiAsteroids.dir/Entities/Ship.cpp.obj: CMakeFiles/MultiAsteroids.dir/flags.make
CMakeFiles/MultiAsteroids.dir/Entities/Ship.cpp.obj: CMakeFiles/MultiAsteroids.dir/includes_CXX.rsp
CMakeFiles/MultiAsteroids.dir/Entities/Ship.cpp.obj: ../Entities/Ship.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\DEV\MultiAsteroids\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/MultiAsteroids.dir/Entities/Ship.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MultiAsteroids.dir\Entities\Ship.cpp.obj -c D:\DEV\MultiAsteroids\Entities\Ship.cpp

CMakeFiles/MultiAsteroids.dir/Entities/Ship.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MultiAsteroids.dir/Entities/Ship.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\DEV\MultiAsteroids\Entities\Ship.cpp > CMakeFiles\MultiAsteroids.dir\Entities\Ship.cpp.i

CMakeFiles/MultiAsteroids.dir/Entities/Ship.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MultiAsteroids.dir/Entities/Ship.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\DEV\MultiAsteroids\Entities\Ship.cpp -o CMakeFiles\MultiAsteroids.dir\Entities\Ship.cpp.s

CMakeFiles/MultiAsteroids.dir/GameStates/GameState.cpp.obj: CMakeFiles/MultiAsteroids.dir/flags.make
CMakeFiles/MultiAsteroids.dir/GameStates/GameState.cpp.obj: CMakeFiles/MultiAsteroids.dir/includes_CXX.rsp
CMakeFiles/MultiAsteroids.dir/GameStates/GameState.cpp.obj: ../GameStates/GameState.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\DEV\MultiAsteroids\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/MultiAsteroids.dir/GameStates/GameState.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MultiAsteroids.dir\GameStates\GameState.cpp.obj -c D:\DEV\MultiAsteroids\GameStates\GameState.cpp

CMakeFiles/MultiAsteroids.dir/GameStates/GameState.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MultiAsteroids.dir/GameStates/GameState.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\DEV\MultiAsteroids\GameStates\GameState.cpp > CMakeFiles\MultiAsteroids.dir\GameStates\GameState.cpp.i

CMakeFiles/MultiAsteroids.dir/GameStates/GameState.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MultiAsteroids.dir/GameStates/GameState.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\DEV\MultiAsteroids\GameStates\GameState.cpp -o CMakeFiles\MultiAsteroids.dir\GameStates\GameState.cpp.s

CMakeFiles/MultiAsteroids.dir/GameStates/GameStateSingleplayer.cpp.obj: CMakeFiles/MultiAsteroids.dir/flags.make
CMakeFiles/MultiAsteroids.dir/GameStates/GameStateSingleplayer.cpp.obj: CMakeFiles/MultiAsteroids.dir/includes_CXX.rsp
CMakeFiles/MultiAsteroids.dir/GameStates/GameStateSingleplayer.cpp.obj: ../GameStates/GameStateSingleplayer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\DEV\MultiAsteroids\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/MultiAsteroids.dir/GameStates/GameStateSingleplayer.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MultiAsteroids.dir\GameStates\GameStateSingleplayer.cpp.obj -c D:\DEV\MultiAsteroids\GameStates\GameStateSingleplayer.cpp

CMakeFiles/MultiAsteroids.dir/GameStates/GameStateSingleplayer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MultiAsteroids.dir/GameStates/GameStateSingleplayer.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\DEV\MultiAsteroids\GameStates\GameStateSingleplayer.cpp > CMakeFiles\MultiAsteroids.dir\GameStates\GameStateSingleplayer.cpp.i

CMakeFiles/MultiAsteroids.dir/GameStates/GameStateSingleplayer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MultiAsteroids.dir/GameStates/GameStateSingleplayer.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\DEV\MultiAsteroids\GameStates\GameStateSingleplayer.cpp -o CMakeFiles\MultiAsteroids.dir\GameStates\GameStateSingleplayer.cpp.s

CMakeFiles/MultiAsteroids.dir/Utility/Vector2F.cpp.obj: CMakeFiles/MultiAsteroids.dir/flags.make
CMakeFiles/MultiAsteroids.dir/Utility/Vector2F.cpp.obj: CMakeFiles/MultiAsteroids.dir/includes_CXX.rsp
CMakeFiles/MultiAsteroids.dir/Utility/Vector2F.cpp.obj: ../Utility/Vector2F.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\DEV\MultiAsteroids\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/MultiAsteroids.dir/Utility/Vector2F.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MultiAsteroids.dir\Utility\Vector2F.cpp.obj -c D:\DEV\MultiAsteroids\Utility\Vector2F.cpp

CMakeFiles/MultiAsteroids.dir/Utility/Vector2F.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MultiAsteroids.dir/Utility/Vector2F.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\DEV\MultiAsteroids\Utility\Vector2F.cpp > CMakeFiles\MultiAsteroids.dir\Utility\Vector2F.cpp.i

CMakeFiles/MultiAsteroids.dir/Utility/Vector2F.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MultiAsteroids.dir/Utility/Vector2F.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\DEV\MultiAsteroids\Utility\Vector2F.cpp -o CMakeFiles\MultiAsteroids.dir\Utility\Vector2F.cpp.s

CMakeFiles/MultiAsteroids.dir/InputManager.cpp.obj: CMakeFiles/MultiAsteroids.dir/flags.make
CMakeFiles/MultiAsteroids.dir/InputManager.cpp.obj: CMakeFiles/MultiAsteroids.dir/includes_CXX.rsp
CMakeFiles/MultiAsteroids.dir/InputManager.cpp.obj: ../InputManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\DEV\MultiAsteroids\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/MultiAsteroids.dir/InputManager.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MultiAsteroids.dir\InputManager.cpp.obj -c D:\DEV\MultiAsteroids\InputManager.cpp

CMakeFiles/MultiAsteroids.dir/InputManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MultiAsteroids.dir/InputManager.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\DEV\MultiAsteroids\InputManager.cpp > CMakeFiles\MultiAsteroids.dir\InputManager.cpp.i

CMakeFiles/MultiAsteroids.dir/InputManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MultiAsteroids.dir/InputManager.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\DEV\MultiAsteroids\InputManager.cpp -o CMakeFiles\MultiAsteroids.dir\InputManager.cpp.s

CMakeFiles/MultiAsteroids.dir/Entities/Asteroid.cpp.obj: CMakeFiles/MultiAsteroids.dir/flags.make
CMakeFiles/MultiAsteroids.dir/Entities/Asteroid.cpp.obj: CMakeFiles/MultiAsteroids.dir/includes_CXX.rsp
CMakeFiles/MultiAsteroids.dir/Entities/Asteroid.cpp.obj: ../Entities/Asteroid.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\DEV\MultiAsteroids\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/MultiAsteroids.dir/Entities/Asteroid.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MultiAsteroids.dir\Entities\Asteroid.cpp.obj -c D:\DEV\MultiAsteroids\Entities\Asteroid.cpp

CMakeFiles/MultiAsteroids.dir/Entities/Asteroid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MultiAsteroids.dir/Entities/Asteroid.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\DEV\MultiAsteroids\Entities\Asteroid.cpp > CMakeFiles\MultiAsteroids.dir\Entities\Asteroid.cpp.i

CMakeFiles/MultiAsteroids.dir/Entities/Asteroid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MultiAsteroids.dir/Entities/Asteroid.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\DEV\MultiAsteroids\Entities\Asteroid.cpp -o CMakeFiles\MultiAsteroids.dir\Entities\Asteroid.cpp.s

CMakeFiles/MultiAsteroids.dir/Utility/Random.cpp.obj: CMakeFiles/MultiAsteroids.dir/flags.make
CMakeFiles/MultiAsteroids.dir/Utility/Random.cpp.obj: CMakeFiles/MultiAsteroids.dir/includes_CXX.rsp
CMakeFiles/MultiAsteroids.dir/Utility/Random.cpp.obj: ../Utility/Random.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\DEV\MultiAsteroids\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/MultiAsteroids.dir/Utility/Random.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MultiAsteroids.dir\Utility\Random.cpp.obj -c D:\DEV\MultiAsteroids\Utility\Random.cpp

CMakeFiles/MultiAsteroids.dir/Utility/Random.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MultiAsteroids.dir/Utility/Random.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\DEV\MultiAsteroids\Utility\Random.cpp > CMakeFiles\MultiAsteroids.dir\Utility\Random.cpp.i

CMakeFiles/MultiAsteroids.dir/Utility/Random.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MultiAsteroids.dir/Utility/Random.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\DEV\MultiAsteroids\Utility\Random.cpp -o CMakeFiles\MultiAsteroids.dir\Utility\Random.cpp.s

CMakeFiles/MultiAsteroids.dir/Projection.cpp.obj: CMakeFiles/MultiAsteroids.dir/flags.make
CMakeFiles/MultiAsteroids.dir/Projection.cpp.obj: CMakeFiles/MultiAsteroids.dir/includes_CXX.rsp
CMakeFiles/MultiAsteroids.dir/Projection.cpp.obj: ../Projection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\DEV\MultiAsteroids\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/MultiAsteroids.dir/Projection.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MultiAsteroids.dir\Projection.cpp.obj -c D:\DEV\MultiAsteroids\Projection.cpp

CMakeFiles/MultiAsteroids.dir/Projection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MultiAsteroids.dir/Projection.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\DEV\MultiAsteroids\Projection.cpp > CMakeFiles\MultiAsteroids.dir\Projection.cpp.i

CMakeFiles/MultiAsteroids.dir/Projection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MultiAsteroids.dir/Projection.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\DEV\MultiAsteroids\Projection.cpp -o CMakeFiles\MultiAsteroids.dir\Projection.cpp.s

CMakeFiles/MultiAsteroids.dir/Entities/EntityWrapManager.cpp.obj: CMakeFiles/MultiAsteroids.dir/flags.make
CMakeFiles/MultiAsteroids.dir/Entities/EntityWrapManager.cpp.obj: CMakeFiles/MultiAsteroids.dir/includes_CXX.rsp
CMakeFiles/MultiAsteroids.dir/Entities/EntityWrapManager.cpp.obj: ../Entities/EntityWrapManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\DEV\MultiAsteroids\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/MultiAsteroids.dir/Entities/EntityWrapManager.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MultiAsteroids.dir\Entities\EntityWrapManager.cpp.obj -c D:\DEV\MultiAsteroids\Entities\EntityWrapManager.cpp

CMakeFiles/MultiAsteroids.dir/Entities/EntityWrapManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MultiAsteroids.dir/Entities/EntityWrapManager.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\DEV\MultiAsteroids\Entities\EntityWrapManager.cpp > CMakeFiles\MultiAsteroids.dir\Entities\EntityWrapManager.cpp.i

CMakeFiles/MultiAsteroids.dir/Entities/EntityWrapManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MultiAsteroids.dir/Entities/EntityWrapManager.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\DEV\MultiAsteroids\Entities\EntityWrapManager.cpp -o CMakeFiles\MultiAsteroids.dir\Entities\EntityWrapManager.cpp.s

# Object files for target MultiAsteroids
MultiAsteroids_OBJECTS = \
"CMakeFiles/MultiAsteroids.dir/main.cpp.obj" \
"CMakeFiles/MultiAsteroids.dir/Entities/BaseEntity.cpp.obj" \
"CMakeFiles/MultiAsteroids.dir/Entities/Ship.cpp.obj" \
"CMakeFiles/MultiAsteroids.dir/GameStates/GameState.cpp.obj" \
"CMakeFiles/MultiAsteroids.dir/GameStates/GameStateSingleplayer.cpp.obj" \
"CMakeFiles/MultiAsteroids.dir/Utility/Vector2F.cpp.obj" \
"CMakeFiles/MultiAsteroids.dir/InputManager.cpp.obj" \
"CMakeFiles/MultiAsteroids.dir/Entities/Asteroid.cpp.obj" \
"CMakeFiles/MultiAsteroids.dir/Utility/Random.cpp.obj" \
"CMakeFiles/MultiAsteroids.dir/Projection.cpp.obj" \
"CMakeFiles/MultiAsteroids.dir/Entities/EntityWrapManager.cpp.obj"

# External object files for target MultiAsteroids
MultiAsteroids_EXTERNAL_OBJECTS =

MultiAsteroids.exe: CMakeFiles/MultiAsteroids.dir/main.cpp.obj
MultiAsteroids.exe: CMakeFiles/MultiAsteroids.dir/Entities/BaseEntity.cpp.obj
MultiAsteroids.exe: CMakeFiles/MultiAsteroids.dir/Entities/Ship.cpp.obj
MultiAsteroids.exe: CMakeFiles/MultiAsteroids.dir/GameStates/GameState.cpp.obj
MultiAsteroids.exe: CMakeFiles/MultiAsteroids.dir/GameStates/GameStateSingleplayer.cpp.obj
MultiAsteroids.exe: CMakeFiles/MultiAsteroids.dir/Utility/Vector2F.cpp.obj
MultiAsteroids.exe: CMakeFiles/MultiAsteroids.dir/InputManager.cpp.obj
MultiAsteroids.exe: CMakeFiles/MultiAsteroids.dir/Entities/Asteroid.cpp.obj
MultiAsteroids.exe: CMakeFiles/MultiAsteroids.dir/Utility/Random.cpp.obj
MultiAsteroids.exe: CMakeFiles/MultiAsteroids.dir/Projection.cpp.obj
MultiAsteroids.exe: CMakeFiles/MultiAsteroids.dir/Entities/EntityWrapManager.cpp.obj
MultiAsteroids.exe: CMakeFiles/MultiAsteroids.dir/build.make
MultiAsteroids.exe: C:/Program\ Files\ (x86)/SFML/lib/libsfml-graphics-s.a
MultiAsteroids.exe: C:/Program\ Files\ (x86)/SFML/lib/libsfml-system-s.a
MultiAsteroids.exe: C:/Program\ Files\ (x86)/SFML/lib/libsfml-window-s.a
MultiAsteroids.exe: C:/Program\ Files\ (x86)/SFML/lib/libsfml-system-s.a
MultiAsteroids.exe: C:/Program\ Files\ (x86)/SFML/lib/libfreetype.a
MultiAsteroids.exe: CMakeFiles/MultiAsteroids.dir/linklibs.rsp
MultiAsteroids.exe: CMakeFiles/MultiAsteroids.dir/objects1.rsp
MultiAsteroids.exe: CMakeFiles/MultiAsteroids.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\DEV\MultiAsteroids\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX executable MultiAsteroids.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\MultiAsteroids.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MultiAsteroids.dir/build: MultiAsteroids.exe

.PHONY : CMakeFiles/MultiAsteroids.dir/build

CMakeFiles/MultiAsteroids.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\MultiAsteroids.dir\cmake_clean.cmake
.PHONY : CMakeFiles/MultiAsteroids.dir/clean

CMakeFiles/MultiAsteroids.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\DEV\MultiAsteroids D:\DEV\MultiAsteroids D:\DEV\MultiAsteroids\cmake-build-debug D:\DEV\MultiAsteroids\cmake-build-debug D:\DEV\MultiAsteroids\cmake-build-debug\CMakeFiles\MultiAsteroids.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MultiAsteroids.dir/depend

