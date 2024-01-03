deps() { print 'cc make' }

setup() {
	make
	cp ../../scripts/c-tomlc99-perf.c .
	cc -O2 c-tomlc99-perf.c toml.c -o perf
}

typeset -A info=(
	lang    'C'
	toml    '1.0'
	site    'https://github.com/cktan/tomlc99'
	src     'https://github.com/cktan/tomlc99.git'
	decoder 'toml_json'
	encoder ''
	perf    'perf'
)
