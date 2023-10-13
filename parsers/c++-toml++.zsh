setup() {
	meson build_tt --buildtype=release -Dbuild_tt=true -Dgenerate_cmake_config=false
	cd build_tt
	ninja

	cp ../../../scripts/c++-toml++-perf.cpp .
	c++ -std=c++17 -O2 -I.. c++-toml++-perf.cpp -o perf
}

typeset -A info=(
	lang    'C++'
	toml    '1.0'
	site    'https://github.com/marzer/tomlplusplus'
	src     'git@github.com:marzer/tomlplusplus.git'
	decoder 'build_tt/toml-test/tt_decoder'
	encoder 'build_tt/toml-test/tt_encoder'
	perf    'build_tt/perf'
)
