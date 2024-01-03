deps() { print 'python' }

setup() { }

export PYTHONPATH=./src/python-toml

typeset -A info=(
	lang    'Python'
	toml    '1.0'
	site    'https://github.com/uiri/toml'
	src     'https://github.com/uiri/toml.git'
	decoder 'tests/decoding_test.py'
	encoder 'tests/encoding_test.py'
	perf    './scripts/python-toml-perf'
)
