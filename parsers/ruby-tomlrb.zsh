setup() {
	bundle
	cp ../../scripts/ruby-tomlrb-decoder .
	cp ../../scripts/ruby-tomlrb-perf .
}

export RUBYLIB=./src/ruby-tomlrb/lib

typeset -A info=(
	lang    'Ruby'
	toml    '1.0'
	site    'https://github.com/fbernier/tomlrb'
	src     'git@github.com:fbernier/tomlrb.git'
	decoder 'ruby-tomlrb-decoder'
	encoder ''
	perf    'ruby-tomlrb-perf'
)
