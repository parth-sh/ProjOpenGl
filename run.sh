clear
rm -rf build/
mkdir -p build
sleep 5
# Configure build directory, not needed everytime
cmake -S . -B build/
# Build project
cmake --build build/
build/hello