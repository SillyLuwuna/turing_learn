#!/bin/bash

type=$1

if [ -z "$type" ]
then
	type=Release
else
	type=$type
fi

cmake -B build -D CMAKE_BUILD_TYPE=$type -D BUILD_TESTS=OFF
# cmake -B build -D CMAKE_C_COMPILER=gcc -D CMAKE_CXX_COMPILER=g++ -D CMAKE_BUILD_TYPE=$type -D BUILD_TESTS=OFF
# cmake -B build -D CMAKE_C_COMPILER=clang -D CMAKE_CXX_COMPILER=clang++ -D CMAKE_BUILD_TYPE=$type -D BUILD_TESTS=OFF
cmake --build build --parallel
