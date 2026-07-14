cmake_minimum_required(VERSION 3.10)# compiler settings
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# set(CMAKE_CXX_COMPILER "/usr/bin/clang")

file(GLOB_RECURSE SRC_FILES src/*.cpp)
file(GLOB_RECURSE TEST_FILES test/*.cpp)


project(turing_learn)

add_executable(turing_learn ${SRC_FILES})

target_compile_definitions(turing_learn PRIVATE
	$<$<CONFIG:Debug>:DEBUG>
)

target_compile_options(turing_learn PRIVATE
	-Wall
	-Wextra
	-Wpedantic
	-O2
)

target_include_directories(turing_learn PUBLIC include)
