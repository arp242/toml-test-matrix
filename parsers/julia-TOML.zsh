setup() {
	print $'import Pkg;\nPkg.add("JSON");\n' >|toml-test-setup.jl
	julia toml-test-setup.jl
	# Pkg.add("PackageCompiler")
}

export PATH=$PATH:/home/martin/julia-1.9.3/bin

typeset -A info=(
	skip    '1' # TODO

	lang    'Julia'
	toml    '1.0'
	site    'https://github.com/JuliaLang/TOML.jl'
	src     'git@github.com:JuliaLang/TOML.jl.git'
	decoder 'julia-TOML-decode.jl'
	encoder 'N/A'
	perf    ''
)
