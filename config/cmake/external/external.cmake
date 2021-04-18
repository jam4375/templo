# Temporarily disable clang-tidy configuration:
set(CMAKE_CXX_CLANG_TIDY_OLD ${CMAKE_CXX_CLANG_TIDY})
set(CMAKE_CXX_CLANG_TIDY
    ""
    CACHE INTERNAL "Disable clang-tidy for external targets")

include("${${PROJECT_NAME}_SOURCE_DIR}/config/cmake/external/gtest.cmake")
include("${${PROJECT_NAME}_SOURCE_DIR}/config/cmake/external/cxxopts.cmake")

# Restore clang-tidy configuration:
set(CMAKE_CXX_CLANG_TIDY
    ${CMAKE_CXX_CLANG_TIDY_OLD}
    CACHE BOOL "Re-enable clang-tidy for templo" FORCE)
