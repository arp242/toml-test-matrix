deps() { print 'zig' }

setup() { }

typeset -A info=(
	# TODO: has nothing for this.
	skip 1

	lang    'Zig'
	toml    '1.0'
	site    'https://codeberg.org/Egoist/toml-zig'
	src     'https://codeberg.org/Egoist/toml-zig.git'
	decoder ''
	encoder ''
	perf    ''
)
