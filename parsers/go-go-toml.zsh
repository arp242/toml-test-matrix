setup() {
	go build ./cmd/gotoml-test-decoder
	#go build ./cmd/toml-test-encoder
}

typeset -A info=(
	lang    'Go'
	toml    '1.0'
	site    'https://github.com/pelletier/go-toml'
	src     'git@github.com:pelletier/go-toml.git'
	version ''
	decoder 'gotoml-test-decoder'
	encoder 'N/A' # No program for this?
)
