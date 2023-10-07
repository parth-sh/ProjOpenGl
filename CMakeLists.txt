cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(hello VERSION 1.0)

add_subdirectory(glfw-3.3.8 glfw)
list(APPEND EXTRA_INCLUDES ${CMAKE_CURRENT_SOURCE_DIR}/glfw-3.3.8/include ${CMAKE_CURRENT_SOURCE_DIR}/glad/include)

find_library(COCOA_LIBRARY Cocoa)
find_library(OpenGL_LIBRARY OpenGL)
find_library(IOKIT_LIBRARY IOKit)
set(EXTRA_LIBS ${COCOA_LIBRARY} ${OpenGL_LIBRARY} ${IOKIT_LIBRARY})

add_executable(hello main.cpp ${CMAKE_CURRENT_SOURCE_DIR}/glad/src/glad.c)
target_link_libraries(hello PUBLIC glfw ${EXTRA_LIBS})
target_include_directories(hello PUBLIC ${EXTRA_INCLUDES})
