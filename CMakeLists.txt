include(FetchContent)
cmake_minimum_required(VERSION 4.2.3)
project(my_project)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

FetchContent_Declare(
	sdl
	GIT_REPOSITORY https://github.com/libsdl-org/SDL.git
	GIT_TAG main
)

FetchContent_MakeAvailable(sdl)

# Change path from /src if needed, or add more directories
file(GLOB_RECURSE sources
        "${CMAKE_SOURCE_DIR}/src/*.c"
        "${CMAKE_SOURCE_DIR}/src/*.cpp"
        )
# Add precompiler definitions like that:
# add_definitions(-DSOME_DEFINITION)

add_executable(my_app ${sources})

# Add more include directories if needed
target_include_directories(my_app PUBLIC "${CMAKE_SOURCE_DIR}/include" "C:/msys64/ucrt64/include/c++/15.1.0")

# If you have precompiled headers you can add them like this
# target_precompiled_headers(my_app PRIVATE "${CMAKE_SOURCE_DIR}/src/pch.h")
