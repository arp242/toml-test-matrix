deps() { print 'v' }

setup() { }

typeset -A info=(
	# TODO: doesn't seem too hard to add, but not easily installable as a
	# package (on Void Linux).
	# https://github.com/vlang/v/blob/master/vlib/toml/tests/burntsushi_toml_test.v#L198
	skip 1

	lang    'V'
	toml    '1.0'
	site    'https://github.com/vlang/v/tree/master/vlib/toml'
	src     ''  # stdlib
	decoder ''
	encoder ''
	perf    ''
)
