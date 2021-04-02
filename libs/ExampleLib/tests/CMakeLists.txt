add_executable(${CMAKE_PROJECT_NAME}_ExampleLibTest main.cpp)

target_link_libraries(${CMAKE_PROJECT_NAME}_ExampleLibTest PUBLIC ${CMAKE_PROJECT_NAME}_ExampleLib gtest)

# disable warning that's fundamental to gtest:
target_compile_options(${CMAKE_PROJECT_NAME}_ExampleLibTest PRIVATE "-Wno-global-constructors")

gtest_discover_tests(${CMAKE_PROJECT_NAME}_ExampleLibTest)
