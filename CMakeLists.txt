cmake_minimum_required(VERSION 3.20.0)

project(templo CXX)

# Setup project configuration:
include("${${PROJECT_NAME}_SOURCE_DIR}/config/config.cmake")

add_subdirectory(apps)
add_subdirectory(libs)
