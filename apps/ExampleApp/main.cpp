#include "ExampleLib/ExampleLib.h"

#include "cxxopts.hpp"

int main(int argc, char **argv) {
    cxxopts::Options options(
        "ExampleApp", "ExampleApp: example application for the templo template repository (Version: ${GIT_VERSION})");

    // clang-format off
    options.add_options()
        ("h,help", "Print usage message")
    ;
    // clang-format on

    try {
        auto result = options.parse(argc, argv);

        if (result.count("help")) {
            std::cout << options.help() << std::endl;
            std::exit(0);
        }
    } catch (const cxxopts::option_not_exists_exception &e) {
        std::cerr << "ERROR: " << e.what() << std::endl;
        std::cout << std::endl;
        std::cout << options.help() << std::endl;
        std::exit(1);
    } catch (const std::exception &e) {
        std::cerr << "ERROR: " << e.what() << std::endl;
        std::cout << std::endl;
        std::cout << options.help() << std::endl;
        std::exit(1);
    }

    PrintMessage("Hello world");

    return 0;
}