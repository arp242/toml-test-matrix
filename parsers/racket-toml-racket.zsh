setup() {
	# This needs this directory name, otherwise 'raco pkg install' refuses to
	# work.
	cd src
	if [[ ! -d toml-racket ]]; then
		git clone 'git@github.com:toml-racket/toml-racket.git'
	else
		(cd toml-racket && git pull ||:)
	fi
	ln -fs toml-racket racket-toml-racket

	cd toml-racket
	(cd toml-lib        && raco pkg install --auto --batch) ||:
	(cd toml-compliance && raco pkg install --auto --batch) ||:

	raco exe ./toml-compliance/compliance/decoder.rkt
	raco exe ./toml-compliance/compliance/encoder.rkt
}

typeset -A info=(
	lang    'Racket'
	toml    '1.0'
	site    'https://github.com/toml-racket/toml-racket'
	src     '' # git@github.com:toml-racket/toml-racket.git'
	decoder 'toml-compliance/compliance/decoder'
	encoder 'toml-compliance/compliance/encoder'
	perf    'TODO'
	flags   '-timeout=3s'
)
