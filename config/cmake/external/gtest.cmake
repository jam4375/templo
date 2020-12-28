include(FetchContent)
FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG release-1.10.0)

FetchContent_MakeAvailable(googletest)

# Make CMake macros like 'gtest_discover_tests' available:
include(GoogleTest)

enable_testing()
