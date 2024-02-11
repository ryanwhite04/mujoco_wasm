cmake_minimum_required(VERSION 3.2)
option(JS_ONLY "Compiles to native JS (No WASM)" OFF)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/dist")

project(mujoco_wasm)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -O3")

set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR})

set(MUJOCO_INSTALL_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/mujoco/include)
set(MUJOCO_INSTALL_BIN_DIR ${PROJECT_SOURCE_DIR}/bin)
set(MUJOCO_INSTALL_LIB_DIR ${CMAKE_BINARY_DIR}/lib)

include_directories(${MUJOCO_INSTALL_INCLUDE_DIR})
link_directories(${MUJOCO_INSTALL_LIB_DIR})

set(MUJOCO_BUILD_EXAMPLES OFF CACHE BOOL "Build samples for MuJoCo" FORCE)
set(MUJOCO_BUILD_SIMULATE OFF CACHE BOOL "Build simulate library for MuJoCo" FORCE)
set(MUJOCO_BUILD_TESTS OFF CACHE BOOL "Build tests for MuJoCo" FORCE)
set(MUJOCO_TEST_PYTHON_UTIL OFF CACHE BOOL "Build and test utility libraries for Python bindings" FORCE)

add_subdirectory(mujoco)
add_subdirectory(src)
