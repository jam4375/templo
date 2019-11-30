add_library(example_lib SHARED example_lib_code.cpp)

target_include_directories(example_lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})