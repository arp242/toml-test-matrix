deps() { print 'guile git' }

setup() {
	if [[ -d guile-json ]]; then
		(cd guile-json && git pull)
	else
		git clone git@github.com:aconchillo/guile-json.git
	fi

	GUILE_LOAD_PATH=.:guile-json ./test/test-decoder.scm <<<''
	GUILE_LOAD_PATH=.:guile-json ./test/test-encoder.scm <<<'{}'
}

export GUILE_LOAD_PATH=src/guile-toml:src/guile-toml/guile-json

typeset -A info=(
	lang    'Guile'
	toml    '1.0'
	site    'https://github.com/hylophile/guile-toml'
	src     'git@github.com:hylophile/guile-toml.git'
	decoder 'test/test-decoder.scm'
	encoder 'test/test-encoder.scm'
	perf    'TODO'
)
