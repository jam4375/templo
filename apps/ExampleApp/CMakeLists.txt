configure_file(main.cpp main.cpp)

add_executable(${PROJECT_NAME}_ExampleApp ${CMAKE_CURRENT_BINARY_DIR}/main.cpp)

target_include_directories(${PROJECT_NAME}_ExampleApp PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(${PROJECT_NAME}_ExampleApp PRIVATE ${PROJECT_NAME}::ExampleLib cxxopts)
