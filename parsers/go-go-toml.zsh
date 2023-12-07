deps() { print 'go' }

setup() {
	go build ./cmd/gotoml-test-decoder
	go build ./cmd/gotoml-test-encoder

	mkdir -p ./cmd/perf
	cp ../../scripts/go-go-toml-perf.go ./cmd/perf
	go build ./cmd/perf
}

typeset -A info=(
	lang    'Go'
	toml    '1.0'
	site    'https://github.com/pelletier/go-toml'
	src     'git@github.com:pelletier/go-toml.git'
	decoder 'gotoml-test-decoder'
	encoder 'gotoml-test-encoder'
	perf    'perf'
)
