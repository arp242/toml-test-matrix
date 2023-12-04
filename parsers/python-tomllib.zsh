setup() {
	print
}

typeset -A info=(
	lang    'Python'
	toml    '1.0'
	site    'https://docs.python.org/3/library/tomllib.html'
	src     ''  # stdlib
	version "$(python -V)"
	decoder './scripts/python-tomllib-decoder'
	encoder ''
	perf    './scripts/python-tomllib-perf'
)
