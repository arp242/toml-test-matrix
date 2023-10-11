setup() {
	meson setup _build
	meson compile -C _build
}

# Remove the memory address of the backtraces so output is stable.
after-run() {
	sed -Ei 's/(    #[0-9]+ ) 0x[0-9a-f]{6,12} in /\1 0x… in /' output/fortran-toml-f.html
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
