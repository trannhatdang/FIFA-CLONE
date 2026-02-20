cmake_minimum_required(VERSION 4.2.3)
project(my_project)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/$<CONFIGURATION>")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/$<CONFIGURATION>")

add_subdirectory(vendored/SDL EXCLUDE_FROM_ALL)
add_subdirectory(vendored/SDL_image EXCLUDE_FROM_ALL)

# Change path from /src if needed, or add more directories
file(GLOB_RECURSE sources
        "${CMAKE_SOURCE_DIR}/src/*.c"
        "${CMAKE_SOURCE_DIR}/src/*.cpp"
        )
# Add precompiler definitions like that:
# add_definitions(-DSOME_DEFINITION)

add_executable(my_app WIN32 ${sources})

# Add more include directories if needed
target_include_directories(my_app PUBLIC "${CMAKE_SOURCE_DIR}/include" "C:/msys64/ucrt64/include/c++/15.1.0")

target_link_libraries(my_app PRIVATE SDL3_image::SDL3_image SDL3::SDL3)
# If you have precompiled headers you can add them like this
# target_precompiled_headers(my_app PRIVATE "${CMAKE_SOURCE_DIR}/src/pch.h")
