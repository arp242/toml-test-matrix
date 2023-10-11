setup() {
	cabal update
	cabal configure --enable-test
	cabal build
	cabal test
}

typeset -A info=(
	# TODO
    skip    '1'
	lang    'Haskell'
	toml    '1.0'
	site    'https://github.com/brandonchinn178/toml-reader'
	src     'git@github.com:brandonchinn178/toml-reader.git'
	version ''
	decoder ''
	encoder ''
	perf    'TODO'
)
