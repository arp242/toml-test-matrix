deps() { print 'perl' }

setup() { }

typeset -A info=(
	# TODO: this tests against toml-test by converting the JSON files to Perl
	# code; it doesn't include a JSON converter so need to write that.
	skip 1

	lang    'Perl'
	toml    '1.0'
	site    'https://github.com/sysread/TOML-Tiny'
	src     'https://github.com/sysread/TOML-Tiny.git'
	decoder ''
	encoder ''
	perf    ''
)
