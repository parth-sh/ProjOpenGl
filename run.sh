rm -rf build/
mkdir -p build
sleep 5
cmake -S . -B build/
cmake --build build/
build/hello