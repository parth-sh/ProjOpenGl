cmake_minimum_required(VERSION 3.10)

project(hello VERSION 0.1)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

configure_file(ProjectConfig.h.in ProjectConfig.h)

add_subdirectory(glfw-3.3.8 GlfwLib)
list(APPEND EXTRA_INCLUDES 
    "${PROJECT_SOURCE_DIR}/glad/include"
    )

find_library(COCOA_LIBRARY Cocoa)
find_library(OpenGL_LIBRARY OpenGL)
find_library(IOKIT_LIBRARY IOKit)
set(EXTRA_LIBS ${COCOA_LIBRARY} ${OpenGL_LIBRARY} ${IOKIT_LIBRARY})

add_executable(hello)
target_sources(hello PRIVATE main.cpp ${PROJECT_SOURCE_DIR}/glad/src/glad.c)
target_link_libraries(hello PUBLIC glfw ${EXTRA_LIBS})
target_include_directories(hello PUBLIC "${PROJECT_BINARY_DIR}" ${EXTRA_INCLUDES})
