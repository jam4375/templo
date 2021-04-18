set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Create a version string
find_package(Git REQUIRED)
execute_process(
    COMMAND git describe --tags --dirty
    OUTPUT_VARIABLE ${PROJECT_NAME}_GIT_VERSION
    OUTPUT_STRIP_TRAILING_WHITESPACE ERROR_QUIET)

# Set default build type to Release
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

# Setup output binary directories
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

include("${CMAKE_CURRENT_LIST_DIR}/compilers/compilers.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/external/external.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/modules/modules.cmake")
