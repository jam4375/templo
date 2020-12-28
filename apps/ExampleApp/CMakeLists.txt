add_executable(ExampleApp main.cpp)

target_include_directories(ExampleApp PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(ExampleApp ExampleLib)