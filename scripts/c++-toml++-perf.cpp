// This file is a part of toml++ and is subject to the the terms of the MIT license.
// Copyright (c) Mark Gillard <mark.gillard@outlook.com.au>
// See https://github.com/marzer/tomlplusplus/blob/master/LICENSE for the full license text.
// SPDX-License-Identifier: MIT

// Adapted from examples/simple_parser.cpp

// inline examples.hpp
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Weverything"
#elif defined(__GNUC__)
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wall"
#pragma GCC diagnostic ignored "-Wextra"
#elif defined(_MSC_VER)
#pragma warning(push, 0)
#endif

#include <cstdlib>
#include <ctime>
#include <cassert>
#include <iostream>
#include <sstream>
#include <string>
#include <string_view>
#include <vector>
#include <array>
#include <chrono>
#include <fstream>
#ifdef _WIN32
#ifdef _MSC_VER
extern "C" __declspec(dllimport) int __stdcall SetConsoleOutputCP(unsigned int);
#pragma comment(lib, "Kernel32.lib")
#else
#include <Windows.h>
#endif
#endif

namespace
{
	static const auto initialize_environment_automagically = []() noexcept
	{
#ifdef _WIN32
		SetConsoleOutputCP(65001); // CP_UTF8
#endif

		std::ios_base::sync_with_stdio(false);
		std::cout << std::boolalpha;

		srand(static_cast<unsigned int>(time(nullptr)));

		return true;
	}();
}

#ifdef __clang__
#pragma clang diagnostic pop
#elif defined(__GNUC__)
#pragma GCC diagnostic pop
#elif defined(_MSC_VER)
#pragma warning(pop)
#endif

// end of examples.hpp

#include "toml.hpp"

using namespace std::string_view_literals;

int main(int argc, char** argv) {
	const auto path = argc > 1 ? std::string_view{ argv[1] } : "example.toml"sv;

	toml::table tbl;
	try {
		tbl = toml::parse_file(path);
	}
	catch (const toml::parse_error& err) {
		std::cerr << err << "\n";
		return 1;
	}
	return 0;
}
