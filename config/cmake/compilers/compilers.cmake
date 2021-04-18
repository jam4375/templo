set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

if("${CMAKE_CXX_COMPILER_ID}" MATCHES "Clang")
    message(STATUS "Loading Clang cmake settings")
    include(${${PROJECT_NAME}_SOURCE_DIR}/config/cmake/compilers/Clang.cmake)
elseif("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    message(STATUS "Loading GCC cmake settings")
    include(${${PROJECT_NAME}_SOURCE_DIR}/config/cmake/compilers/GCC.cmake)
else()
    message(FATAL_ERROR "Unsupported compiler: ${CMAKE_CXX_COMPILER_ID}")
endif()

set(CMAKE_CXX_CLANG_TIDY clang-tidy -p ${CMAKE_BINARY_DIR})
