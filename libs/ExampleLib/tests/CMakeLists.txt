add_executable(ExampleLibTest main.cpp)

target_link_libraries(ExampleLibTest PUBLIC ExampleLib gtest)

# disable warning that's fundamental to gtest:
target_compile_options(ExampleLibTest PRIVATE "-Wno-global-constructors")

gtest_discover_tests(ExampleLibTest)
