deps() { print 'node' }

setup() {
	cp ../../scripts/js-toml-j-* .
}

# TODO: the failing tests on this one are mostly because toml-test doesn't
# compare deeply nested inline arrays/tables properly
typeset -A info=(
	lang    'JS'
	toml    '1.0'
	site    'https://github.com/LongTengDao/j-toml'
	src     'git@github.com:LongTengDao/j-toml.git'
	decoder 'js-toml-j-decode'
	encoder 'js-toml-j-encode'
	perf    'js-toml-j-perf'
)
