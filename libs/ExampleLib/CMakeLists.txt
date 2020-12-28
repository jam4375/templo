add_library(ExampleLib ExampleLib.cpp)

target_include_directories(ExampleLib PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(ExampleLib INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/../)

add_subdirectory(tests)
