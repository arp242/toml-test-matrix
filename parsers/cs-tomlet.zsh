deps() { print 'dotnet' }

setup() { }

typeset -A info=(
	# TODO: doesn't contain anything for toml-test
	skip 1

	lang    'C#'
	toml    '1.0'
	site    'https://github.com/SamboyCoding/Tomlet'
	src     'https://github.com/SamboyCoding/Tomlet.git'
	version ''
	decoder ''
	encoder ''
	perf    ''
)
