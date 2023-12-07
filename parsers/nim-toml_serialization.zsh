deps() { print 'nim nimble' }

setup() {
	nimble install -y --depsOnly
	nimble install -y stint
}

typeset -A info=(
	# TODO: this "tests" the toml-test by just loading it and ensuring it
	# doesn't error out. Need to write JSON converter.
	skip 1

	lang    'Nim'
	toml    '1.0'
	site    'https://github.com/status-im/nim-toml-serialization'
	src     'git@github.com:status-im/nim-toml-serialization.git'
	decoder ''
	encoder ''
	perf    ''
)
