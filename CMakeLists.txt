cmake_minimum_required(VERSION 3.12.0)

set(CMAKE_DISABLE_SOURCE_CHANGES ON)
set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)

project(templo CXX)

set(CMAKE_CXX_STANDARD 17)

if ("${CMAKE_CXX_COMPILER_ID}" MATCHES "Clang")
    message(STATUS "Loading Clang cmake settings")
    include(${CMAKE_SOURCE_DIR}/config/cmake/Clang.cmake)
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    message(STATUS "Loading GCC cmake settings")
    include(${CMAKE_SOURCE_DIR}/config/cmake/GCC.cmake)
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Intel")
#    include(${CMAKE_SOURCE_DIR}/config/cmake/ICC.cmake)
elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
#    include(${CMAKE_SOURCE_DIR}/config/cmake/MSVC.cmake)
endif()

set(CMAKE_POSITION_INDEPENDENT_CODE ON)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

# Setup testing
enable_testing()

add_subdirectory(apps)
add_subdirectory(lib)