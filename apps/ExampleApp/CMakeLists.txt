configure_file(main.cpp main.cpp)

add_executable(${CMAKE_PROJECT_NAME}_ExampleApp ${CMAKE_CURRENT_BINARY_DIR}/main.cpp)

target_include_directories(${CMAKE_PROJECT_NAME}_ExampleApp PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(${CMAKE_PROJECT_NAME}_ExampleApp PRIVATE ${CMAKE_PROJECT_NAME}::ExampleLib cxxopts)
