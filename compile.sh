#!/bin/bash

type=$1

if [ -z "$type" ]
then
	type=Release
else
	type=$type
fi

cmake -B build -DCMAKE_BUILD_TYPE=$type
# cd build
cmake --build build --parallel
