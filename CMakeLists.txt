cmake_minimum_required(VERSION 3.20.0)

project(templo CXX)

set(CMAKE_DISABLE_SOURCE_CHANGES ON)
set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(Git REQUIRED)
execute_process(
    COMMAND git describe --tags --dirty
    OUTPUT_VARIABLE ${PROJECT_NAME}_GIT_VERSION
    OUTPUT_STRIP_TRAILING_WHITESPACE ERROR_QUIET)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

# Add custom cmake modules:
list(APPEND CMAKE_MODULE_PATH "${${PROJECT_NAME}_SOURCE_DIR}/config/cmake/modules/")
include(ConfigureLibrary)

# Set compiler settings:
include("${${PROJECT_NAME}_SOURCE_DIR}/config/cmake/compilers/compilers.cmake")

# Setup external dependencies:
include("${${PROJECT_NAME}_SOURCE_DIR}/config/cmake/external/external.cmake")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_subdirectory(apps)
add_subdirectory(libs)
