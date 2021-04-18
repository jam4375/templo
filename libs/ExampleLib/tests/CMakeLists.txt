add_executable(${PROJECT_NAME}_ExampleLibTest main.cpp)

target_link_libraries(${PROJECT_NAME}_ExampleLibTest PUBLIC ${PROJECT_NAME}::ExampleLib gtest)

# disable warning that's fundamental to gtest:
target_compile_options(${PROJECT_NAME}_ExampleLibTest PRIVATE "-Wno-global-constructors")

# disable clang-tidy for the test target (otherwise it will complain about gtest's macros and it doesn't look like they
# can be cleanly ignored)
set_target_properties(${PROJECT_NAME}_ExampleLibTest PROPERTIES CXX_CLANG_TIDY "")

gtest_discover_tests(${PROJECT_NAME}_ExampleLibTest)
