setup() {
	:
}

export PYTHONPATH=./src/python-toml

typeset -A info=(
	lang    'Python'
	toml    '1.0'
	site    'https://github.com/uiri/toml'
	src     'git@github.com:uiri/toml.git'
	version ''
	decoder 'tests/decoding_test.py'
	encoder 'tests/encoding_test.py'
	perf    './scripts/python-toml-perf'
)
