setup() {
	:
}

typeset -A info=(
	lang    'Python'
	toml    '1.0'
	site    'https://docs.python.org/3/library/tomllib.html'
	src     ''
	version "$(python -V)"
	decoder './scripts/python-tomllib-decoder'
	encoder 'N/A'
	perf    './scripts/python-tomllib-perf'
)
