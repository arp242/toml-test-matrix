#define JSON_HAS_FILESYSTEM				 0
#define JSON_HAS_EXPERIMENTAL_FILESYSTEM 0
#include <json.hpp>

#include <toml.hpp>

#include <iostream>
#include <sstream>
#include <string>
#include <string_view>

using nlohmann::json;
using namespace std::string_view_literals;


int main()
{
    const std::string str(std::istreambuf_iterator<char>{ std::cin }, std::istreambuf_iterator<char>{});

    auto tbl = json::parse(str);

    // TODO: convert to json; this C++ syntax is confusing as fuck. My C++
    // law: "any sufficiently advanced C++ program is indistinguishable from
    // line noise".

    //std::cout << tbl << "\n";

	return 0;
}
