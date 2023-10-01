setup() {
	go build ./cmd/gotoml-test-decoder
	#go build ./cmd/toml-test-encoder
	
	mkdir -p ./cmd/perf
	cp ../../scripts/go-go-toml.go ./cmd/perf
	go build ./cmd/perf
}

typeset -A info=(
	lang    'Go'
	toml    '1.0'
	site    'https://github.com/pelletier/go-toml'
	src     'git@github.com:pelletier/go-toml.git'
	version ''
	decoder 'gotoml-test-decoder'
	encoder 'N/A' # No program for this?
	perf    'perf'
)
