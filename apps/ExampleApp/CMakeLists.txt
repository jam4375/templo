configure_file(main.cpp main.cpp)

add_executable(ExampleApp "${CMAKE_CURRENT_BINARY_DIR}/main.cpp")

target_include_directories(ExampleApp PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(ExampleApp ExampleLib cxxopts)
