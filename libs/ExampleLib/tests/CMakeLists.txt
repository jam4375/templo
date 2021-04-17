add_executable(${CMAKE_PROJECT_NAME}_ExampleLibTest main.cpp)

target_link_libraries(${CMAKE_PROJECT_NAME}_ExampleLibTest PUBLIC ${CMAKE_PROJECT_NAME}::ExampleLib gtest)

# disable warning that's fundamental to gtest:
target_compile_options(${CMAKE_PROJECT_NAME}_ExampleLibTest PRIVATE "-Wno-global-constructors")

# disable clang-tidy for the test target (otherwise it will complain about gtest's macros and it doesn't look like they
# can be cleanly ignored)
set_target_properties(${CMAKE_PROJECT_NAME}_ExampleLibTest PROPERTIES CXX_CLANG_TIDY "")

gtest_discover_tests(${CMAKE_PROJECT_NAME}_ExampleLibTest)
