add_library(${CMAKE_PROJECT_NAME}_ExampleLib ExampleLib.cpp)
add_library(${CMAKE_PROJECT_NAME}::ExampleLib ALIAS ${CMAKE_PROJECT_NAME}_ExampleLib)

target_include_directories(${CMAKE_PROJECT_NAME}_ExampleLib PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(${CMAKE_PROJECT_NAME}_ExampleLib INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/../)

add_subdirectory(tests)
