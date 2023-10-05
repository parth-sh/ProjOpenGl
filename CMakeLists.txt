cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(hello VERSION 1.0)

add_subdirectory(glfw-3.3.8)
# find_library(GLFW libglfw3.a REQUIRED PATHS ${CMAKE_CURRENT_SOURCE_DIR}/glfw-3.3.8/build/src/libglfw3.a)
set(GLFW_LIBRARY ${CMAKE_CURRENT_SOURCE_DIR}/build/glfw-3.3.8/src/libglfw3.a)
set(GLFW_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/glfw-3.3.8/include)

set(GLAD_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/glad/include)
set(GLAD_SRC ${CMAKE_CURRENT_SOURCE_DIR}/glad/src/glad.c)

find_library(COCOA_LIBRARY Cocoa)
find_library(OpenGL_LIBRARY OpenGL)
find_library(IOKIT_LIBRARY IOKit)
set(EXTRA_LIBS ${COCOA_LIBRARY} ${OpenGL_LIBRARY} ${IOKIT_LIBRARY})

add_executable(hello main.cpp ${GLAD_SRC})
target_include_directories(hello PUBLIC ${GLFW_INCLUDE_DIR} ${GLAD_INCLUDE_DIR})
target_link_libraries(hello PUBLIC ${GLFW_LIBRARY} ${EXTRA_LIBS})
