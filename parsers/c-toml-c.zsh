setup() {
	make
	cp ../../scripts/c-tomlc99-perf.c .
	cc -O2 c-tomlc99-perf.c toml.c -o perf
}

typeset -A info=(
	lang    'C'
	toml    '1.0'
	site    'https://github.com/arp242/toml-c'
	src     'git@github.com:arp242/toml-c.git'
	decoder 'toml2json'
	encoder ''
	perf    'perf'
)
