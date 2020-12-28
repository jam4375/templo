add_executable(ExampleLibTest main.cpp)

target_link_libraries(ExampleLibTest PUBLIC ExampleLib gtest)

add_test(NAME ExampleLibTest
         COMMAND "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/ExampleLibTest")

gtest_discover_tests(ExampleLibTest)
