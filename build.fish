emsdk_setup
emsdk activate latest
# empty the dist folder
if test -d dist; rm -r dist; end; mkdir dist
# empty the build folder
if test -d build; sudo rm -r build; end; mkdir build
pushd build
emcmake cmake ..
emmake make
popd