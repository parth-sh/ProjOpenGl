Chronology

1. https://www.youtube.com/watch?v=45MIykWJ-C4&list=PLWKjhJtqVAbmUE5IqyfGYEYjrZBYzaT4m&index=15

<!-- 2. https://visualstudio.microsoft.com/thank-you-downloading-visual-studio-mac/?sku=communitymac&rel=17 -->

<!-- 3. Download Cmake
https://cmake.org/download/ -->

3. brew install cmake

4. Download GLFW
https://www.glfw.org/download.html

5. Download glad
https://glad.dav1d.de/

6. Run Cmake, create GLFW build folder
https://stackoverflow.com/questions/7751342/how-to-execute-make-file
Specify generator for this project: Unix makefile
cd build/
make
cd build/src
make

7. Copy glfw-3.3.8/build/src/libglfw3.a to project/Libraries/lib
https://stackoverflow.com/questions/5965171/what-is-a-file-with-extension-a

8. Copy glfw-3.3.8/include/GLFW to /Libraries/include

<!-- 9. Best IDE
https://stackoverflow.com/a/2254934/9229695
Downloading Qt creator online installer
https://www.youtube.com/watch?v=cXojtB8vS2E
https://my.qt.io/

Error1: https://www.youtube.com/watch?v=jJuksIvwNoo
Run sudo ./qtrun.app/Contents/MacOS/qt-unified-macOS-x64-4.6.1-online --mirror http://qt.mirror.constant.com

Qt Creator suggesting to install Xcode
https://doc.qt.io/qt-6/macos.html#:~:text=The%20build%20environment%20on%20macOS,how%20your%20application%20is%20built.

Question1:
https://www.reddit.com/r/cpp_questions/comments/ryr3fk/good_explanations_of_differences_between_glfw/
Question2:
https://stackoverflow.com/questions/622726/what-are-the-differences-between-the-opengl-gtk-and-qt-libraries

Yt videos:
How to using Xcode for openGL and GLUT programming.
https://www.youtube.com/watch?v=tzLYr2Fmq40

Yt videos:
OpenGL using Qt-Creator
https://www.youtube.com/watch?v=24GeBn2PVUU -->

9. Creating Raw CMake project
Learning CMake: https://www.youtube.com/watch?v=mKZ-i-UfGgQ
https://codevion.github.io/#!cpp/cmake.md

Older yt video:
https://www.youtube.com/watch?v=nlKcXPUJGwA&list=PLalVdRk2RC6o5GHu618ARWh0VO0bFlif4&index=1&t=0s

Documentation:
https://cmake.org/cmake/help/latest/guide/tutorial/index.html

10. adding OpenGL library to CMake
https://stackoverflow.com/questions/18647976/missing-opengl-headers-on-mac

11. If you are using the static library version of GLFW, add it and the Cocoa, OpenGL and IOKit frameworks to the project as dependencies. They can all be found in /System/Library/Frameworks.
https://www.glfw.org/docs/latest/build.html#:~:text=the%20project%20dependencies.-,If%20you%20are%20using%20the%20static%20library%20version%20of%20GLFW%2C%20add,.,-With%20command%2Dline

https://stackoverflow.com/questions/2908640/how-to-add-a-framework-to-cmake

https://stackoverflow.com/questions/57129755/problems-with-cmakelists-txt-for-osx-windows-compilation
https://stackoverflow.com/q/57129755/9229695

12. Failed to create GLFW window?
glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GLFW_TRUE); // Mac
https://stackoverflow.com/questions/66152815/failed-to-create-glfw-window
https://stackoverflow.com/a/22889120/9229695