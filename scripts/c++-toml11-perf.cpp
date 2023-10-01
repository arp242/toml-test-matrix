#include <toml.hpp>
#include <iostream>

int main(int argc, char** argv) {
    const auto path = argc > 1 ? argv[1] : "example.toml";
    try {
        const auto data = toml::parse(path);
        return 0;
    } catch(const toml::syntax_error& err) {
        std::cout << "what(): " << err.what() << std::endl;
        return 1;
    }
}
