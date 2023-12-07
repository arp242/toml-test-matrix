deps() { print 'ruby bundle' }

setup() {
	bundle
	cp ../../scripts/ruby-perfect_toml-perf .
}

export RUBYLIB=./src/ruby-perfect_toml/lib

typeset -A info=(
	lang    'Ruby'
	toml    '1.0'
	site    'https://github.com/mame/perfect_toml'
	src     'git@github.com:mame/perfect_toml.git'
	decoder 'tool/decoder.rb'
	encoder 'tool/encoder.rb'
	perf    'ruby-perfect_toml-perf'
)
