setup() {
	npm install
	npm run build
	cp ../../scripts/js-toml-eslint-parser-* .
}

typeset -A info=(
	lang    'JS'
	toml    '1.0'
	site    'https://github.com/ota-meshi/toml-eslint-parser'
	src     'git@github.com:ota-meshi/toml-eslint-parser.git'
	decoder 'toml-test-decode.js'
	encoder ''
	perf    'js-toml-eslint-parser-perf.js'
)
