setup() {
	# Note: Needs cabal 3.10 (or 3.8?) for --prefer oldest. 3.6 is too old at least.
	cabal update
	cabal configure --enable-test --prefer-oldest
	cabal build

	# What a path... Copy it to something vaguely managable.
	# dist-newstyle/build/x86_64-linux/ghc-9.4.7/toml-reader-0.2.1.0/t/parser-validator/build/parser-validator/parser-validator .
	cp dist-newstyle/build/x86_64-linux/ghc-*/toml-reader-*/t/parser-validator/build/parser-validator/parser-validator .
}

typeset -A info=(
	lang    'Haskell'
	toml    '1.0'
	site    'https://github.com/brandonchinn178/toml-reader'
	src     'git@github.com:brandonchinn178/toml-reader.git'
	decoder './src/haskell-toml-reader/parser-validator --check'
	encoder ''
	perf    'TODO'
)
