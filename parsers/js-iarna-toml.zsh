deps() { print 'node' }

setup() {
	cp ../../scripts/js-iarna-toml-* .
}

# Needs: https://github.com/iarna/iarna-toml/pull/54
typeset -A info=(
	lang    'JS'
	toml    '1.0'
	site    'https://github.com/iarna/iarna-toml'
	src     'git@github.com:iarna/iarna-toml.git'
	decoder 'js-iarna-toml-decode'
	encoder 'js-iarna-toml-encode'
	perf    'js-iarna-toml-perf'
	flags   '-int-as-float=1'
)
