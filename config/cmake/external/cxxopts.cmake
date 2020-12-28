include(FetchContent)
FetchContent_Declare(
  cxxopts-external
  GIT_REPOSITORY https://github.com/jarro2783/cxxopts.git
  GIT_TAG v2.2.1)

set(FETCHCONTENT_QUIET OFF)

option(CXXOPTS_BUILD_EXAMPLES "Set to ON to build examples" ON)
option(CXXOPTS_BUILD_TESTS "Set to ON to build tests" ON)

set(CXXOPTS_BUILD_EXAMPLES OFF)
set(CXXOPTS_BUILD_TESTS OFF)

FetchContent_MakeAvailable(cxxopts-external)

get_target_property(cxxopts_include_dirs cxxopts INTERFACE_INCLUDE_DIRECTORIES)
set_target_properties(cxxopts PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES
                                         "${cxxopts_include_dirs}")
