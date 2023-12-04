setup() {
	rebar3 compile
}

typeset -A info=(
	# TODO: There's some stuff for this in src/tomerl_test.erl and that even
	# seems to be a main program, but I'm not sure how to execute this.
	#
	# It puts a bunch of .app and .beam files in _build/test/lib/tomerl/ebin/,
	# but how to run this? It's probably someting like this (from that dir), but
	# I can't get it to work:
	#
	#    % erl -pa .
	#
	# And then in the shell:
	#
	#   tomerl_test:main("").
	#
	# That does ... something, as does:
	#
	#   erl -noshell -pa . -s tomerl_test main test
	#
	# But it doesn't really work...
	skip 1

	lang    'Erlang'
	toml    '1.0'
	site    'https://github.com/filmor/tomerl'
	src     'git@github.com:filmor/tomerl.git'
	decoder ''
	encoder ''
	perf    ''
)
