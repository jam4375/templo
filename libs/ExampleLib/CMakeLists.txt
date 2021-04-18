list(APPEND SourceFiles "ExampleLib.cpp")

set(SourceDir ".")
set(InterfaceDir "interface")

configure_library(ExampleLib ${SourceFiles} ${SourceDir} ${InterfaceDir})

add_subdirectory(tests)
