cmake_minimum_required(VERSION 4.3)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)


set(PROJECT "turing_learn")
set(LIB "turing_learn_lib")
set(BIN "turing_learn")
set(MAIN "src/main.cpp")
set(SRC_DIR "src")
set(TEST_DIR "test")
set(INCLUDE_DIR "include")

option(BUILD_TESTS "Build tests" OFF)

set(SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${SRC_DIR})
set(TEST_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${TEST_DIR})

project(${PROJECT})

file(GLOB_RECURSE SRC_FILES CONFIGURE_DEPENDS ${SRC_DIR}/*.cpp)
list(FILTER SRC_FILES EXCLUDE REGEX ".*${MAIN}$")
file(GLOB_RECURSE INCLUDE_FILES CONFIGURE_DEPENDS ${INCLUDE_DIR}/*.hpp)
add_library(${LIB} STATIC ${SRC_FILES} ${INCLUDE_FILES})
set_target_properties(${LIB} PROPERTIES LINKER_LANGUAGE CXX)

target_include_directories(${LIB} PUBLIC ${INCLUDE_DIR})

target_compile_definitions(${LIB} PRIVATE $<$<CONFIG:Debug>:DEBUG>)

target_compile_options(${LIB} PRIVATE
	-Wall
	-Wextra
	-Wpedantic
	-O2
)

add_executable(${BIN} ${MAIN})
target_link_libraries(${BIN} PUBLIC ${LIB})

if (BUILD_TESTS)
	add_executable(${BIN}_test ${TEST_MAIN})
	target_link_libraries(${BIN}_test PUBLIC ${LIB})

	target_compile_definitions(${BIN}_test PRIVATE DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN)

	add_subdirectory(lib/doctest)
	target_link_libraries(${BIN}_test PUBLIC
		doctest
	)

	file(GLOB_RECURSE TEST_FILES CONFIGURE_DEPENDS ${TEST_DIR}/*.cpp)
	target_sources(${BIN}_test PRIVATE ${TEST_FILES})
endif (BUILD_TESTS)
