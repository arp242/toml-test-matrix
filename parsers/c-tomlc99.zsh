setup() {
	make
	cp ../../scripts/c-tomlc99-perf.c .
	cc -O2 c-tomlc99-perf.c toml.c -o perf
}

typeset -A info=(
	lang    'C'
	toml    '1.0'
	site    'https://github.com/cktan/tomlc99'
	src     'git@github.com:cktan/tomlc99.git'
	version ''
	decoder 'toml_json'
	encoder 'N/A'
	perf    'perf'
)
