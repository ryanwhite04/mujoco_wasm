emon
# empty the dist folder
# if test -d dist; rm -r dist; end; mkdir dist
# empty the build folder
# if test -d build; rm -rf build; end; mkdir build
# set -x EMCC_FORCE_STDLIBS 1
emcmake cmake -B build --fresh
emmake make -C build