setup() {
	cp ../../scripts/fortran-toml-f-perf.f90 ./test/compliance/

	grep perf_exe ./test/compliance/meson.build || cat >./test/compliance/meson.build <<-EOF
		perf_exe = executable('perf',
			sources: files('fortran-toml-f-perf.f90'),
			dependencies: tomlf_dep,
		)
	EOF

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
	decoder '_build/test/compliance/toml2json'
	encoder '_build/test/compliance/json2toml'
	perf    '_build/test/compliance/perf'
)
