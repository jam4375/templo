list(APPEND SourceFiles "ExampleLib.cpp")

createlibrary(ExampleLib ${SourceFiles} . interface)

add_subdirectory(tests)
