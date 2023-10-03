setup() {
	bundle
	cp ../../scripts/ruby-toml-rb-decoder .
	cp ../../scripts/ruby-toml-rb-encoder .
	cp ../../scripts/ruby-toml-rb-perf .
}

export RUBYLIB=~/.cache/gem/ruby/3.2.0/gems/citrus-3.0.2/lib:./src/ruby-toml-rb/lib

typeset -A info=(
	# Has enough failing test cases that it's hard to recommend; doesn't really
	# support TOML 1.1. Much better options exist for Ruby.
	skip    '1'

	lang    'Ruby'
	toml    '1.0'
	site    'https://github.com/emancu/toml-rb'
	src     'git@github.com:emancu/toml-rb.git'
	version ''
	decoder 'ruby-toml-rb-decoder'
	encoder 'ruby-toml-rb-encoder'
	perf    'ruby-toml-rb-perf'
)
