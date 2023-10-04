setup() {
	c++ -I. -std=c++17 -O2 tests/check_toml_test.cpp -o check_toml_test

	cp ../../scripts/c++-toml11-perf.cpp .
	c++ -I. -std=c++17 -O2 c++-toml11-perf.cpp -o perf
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
