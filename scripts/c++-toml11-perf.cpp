#include <toml.hpp>
#include <iostream>
#include <chrono>

int main(int argc, char** argv) {
    const auto path = argc > 1 ? argv[1] : "example.toml";
    try {
		const auto start = std::chrono::steady_clock::now();
        const auto data = toml::parse(path);
		printf("%f\n", std::chrono::duration_cast<std::chrono::duration<double>>(
					std::chrono::steady_clock::now() - start).count());
        return 0;
    } catch(const toml::syntax_error& err) {
        std::cout << "what(): " << err.what() << std::endl;
        return 1;
    }
}
