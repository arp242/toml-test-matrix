deps() { print 'cabal' }

setup() {
	cabal update

	cd test-drivers
	cabal configure
	cabal build
	cd ..

	# What a path... Copy it to something vaguely managable.
	# dist-newstyle/build/x86_64-linux/ghc-9.4.7/toml-test-drivers-1.0.0.0/x/TomlDecoder/build/TomlDecoder/TomlDecoder*
	# dist-newstyle/build/x86_64-linux/ghc-9.4.7/toml-test-drivers-1.0.0.0/x/TomlEncoder/build/TomlEncoder/TomlEncoder*

	cp dist-newstyle/build/x86_64-linux/ghc-*/toml-test-drivers-*/x/TomlDecoder/build/TomlDecoder/TomlDecoder .
	cp dist-newstyle/build/x86_64-linux/ghc-*/toml-test-drivers-*/x/TomlEncoder/build/TomlEncoder/TomlEncoder .
}

typeset -A info=(
	lang    'Haskell'
	toml    '1.0'
	site    'https://github.com/glguy/toml-parser'
	src     'git@github.com:glguy/toml-parser.git'
	decoder 'TomlDecoder'
	encoder 'TomlEncoder'
	perf    'TODO'
)
