list(APPEND SourceFiles "ExampleLib.cpp")

configure_library(ExampleLib ${SourceFiles} . interface)

add_subdirectory(tests)
