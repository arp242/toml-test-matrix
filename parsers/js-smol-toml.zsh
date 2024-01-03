deps() { print 'node npm' }

setup() {
	npm install
	npm run build
	cp ../../scripts/js-smol-toml-* .
}

# TODO: the failing tests on this one are mostly because toml-test doesn't
# compare deeply nested inline arrays/tables properly
typeset -A info=(
	lang    'JS'
	toml    '1.0'
	site    'https://github.com/squirrelchat/smol-toml'
	src     'https://github.com/squirrelchat/smol-toml.git'
	decoder 'toml-test-parse.js'
	encoder 'toml-test-encode.js'
	perf    'js-smol-toml-perf.js'
	flags   '-int-as-float=1'
)
