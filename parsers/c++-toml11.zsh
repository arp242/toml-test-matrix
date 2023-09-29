setup() {
	c++ -I. -O2 tests/check_toml_test.cpp -o check_toml_test
}

typeset -A info=(
	lang    'C++'
	toml    '1.0'
	site    'https://github.com/ToruNiina/toml11'
	src     'git@github.com:ToruNiina/toml11.git'
	version ''
	decoder 'check_toml_test'
	encoder 'N/A'
)

