export PYTHONPATH=./src/python-tomlkit

deps() { print 'python' }

setup() { }

typeset -A info=(
	lang    'Python'
	toml    '1.0'
	site    'https://github.com/sdispater/tomlkit'
	src     'https://github.com/sdispater/tomlkit.git'
	decoder './scripts/python-tomlkit-decoder'
	encoder './scripts/python-tomlkit-encoder'
	perf    './scripts/python-tomlkit-perf'
)
