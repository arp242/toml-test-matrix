setup() {
	meson setup _build
	meson compile -C _build
}

typeset -A info=(
	lang    'Fortran'
	toml    '1.0'
	site    'https://github.com/toml-f/toml-f'
	src     'git@github.com:toml-f/toml-f.git'
	version ''
	decoder '_build/test/compliance/toml2json'
	encoder '_build/test/compliance/json2toml'
	perf    'TODO'
)
