# Cmake
rm -rf build/ &&
mkdir -p build &&
cmake -S . -B build/ &&
# Build glfw library, and proj
make -C build/glfw-3.3.8 && 
make -C build/glfw-3.3.8/src && 
make -C build/ &&
build/hello