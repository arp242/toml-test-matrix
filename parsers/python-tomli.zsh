export PYTHONPATH=./src/python-tomli/src:./src/python-tomli/src/tomli/src

deps() { print 'python git' }

setup() {
	cd src
	if [[ ! -d tomli ]]; then
		git clone https://github.com/hukkin/tomli tomli
	else
		(cd tomli && git pull >/dev/null)
	fi
}

typeset -A info=(
	lang    'Python'
	toml    '1.0'
	site    'https://github.com/hukkin/tomli-w'
	src     'https://github.com/hukkin/tomli-w.git'
	decoder './scripts/python-tomli-decoder'
	encoder './scripts/python-tomli-encoder'
	perf    './scripts/python-tomli-perf'
)
