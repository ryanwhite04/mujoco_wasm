emsdk_setup
emsdk activate latest

# Check if the build directory exists and remove it
if test -d dist
    rm -r dist
end
mkdir dist

# Check if the build directory exists and remove it
if test -d build
    sudo rm -r build
end
mkdir build

# Create the build directory and navigate into it
cd build

# Configure the project with Emscripten's toolchain
emcmake cmake ..

# Build the project
emmake make
# Go back to the wasm directory
cd ..