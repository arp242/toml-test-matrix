setup() {
	:
}

typeset -A info=(
	# TODO: has its own comparison in t/lib/TOML/Test.rakumod; need to convert
	# to JSON.
	skip 1

	lang    'Perl'
	toml    '1.0'
	site    'https://github.com/tony-o/raku-toml'
	src     'git@github.com:tony-o/raku-toml.git'
	decoder ''
	encoder ''
	perf    ''
)
