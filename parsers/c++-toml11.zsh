# C++ compiler is slower than a blind crippled tortoise, so we need all these
# stupid tricks if we don't want to wait 40 seconds...
setup() {
	if [[ ! -e check_toml_test ]] || [[ tests/check_toml_test.cpp -nt check_toml_test ]]; then
		c++ -I. -std=c++17 -O2 tests/check_toml_test.cpp -o check_toml_test
	fi

	if [[ ! -e c++-toml11-perf.cpp ]] || \
		[[ "$(sha256sum <<<$(< c++-toml11-perf.cpp))" != "$(sha256sum <<<$(< ../../scripts/c++-toml11-perf.cpp))" ]]; then
		cp ../../scripts/c++-toml11-perf.cpp .
	fi
	if [[ ! -e perf ]] || [[ c++-toml11-perf.cpp -nt perf ]]; then
		c++ -I. -std=c++17 -O2 c++-toml11-perf.cpp -o perf
	fi

	if [[ ! -e json.hpp ]]; then
		curl -sOL https://raw.githubusercontent.com/nlohmann/json/develop/single_include/nlohmann/json.hpp
	fi
	if [[ ! -e c++-toml11-encoder.cpp ]] || \
		[[ "$(sha256sum <<<$(< c++-toml11-encoder.cpp))" != "$(sha256sum <<<$(< ../../scripts/c++-toml11-encoder.cpp))" ]]; then
		cp ../../scripts/c++-toml11-encoder.cpp .
	fi
	if [[ ! -e encoder ]] || [[ c++-toml11-encoder.cpp -nt encoder ]]; then
		c++ -I. -std=c++17 -O2 c++-toml11-encoder.cpp -o encoder
	fi
}

typeset -A info=(
	lang    'C++'
	toml    '1.0'
	site    'https://github.com/ToruNiina/toml11'
	src     'git@github.com:ToruNiina/toml11.git'
	version ''
	decoder 'check_toml_test'
	encoder 'TODO'
	perf    'perf'
)
