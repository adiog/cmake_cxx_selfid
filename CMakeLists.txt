cmake_minimum_required(VERSION 3.0)
project(selfid_test LANGUAGES CXX)

include(${CMAKE_CURRENT_SOURCE_DIR}/cmake_selfid/selfid.cmake)
include_directories(${SELFID_INCLUDE_DIRECTORIES})

add_executable(selfid_test selfid_test.cc ${SELFID_GENERATED_HEADER})
add_dependencies(selfid_test ${SELFID_ALWAYS_RUN_TARGET})

