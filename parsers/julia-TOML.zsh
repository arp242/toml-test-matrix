deps() { print 'julia' }

setup() {
	print $'import Pkg;\nPkg.add("JSON");\n' >|toml-test-setup.jl
	julia toml-test-setup.jl
	# Pkg.add("PackageCompiler")
}

export PATH=$PATH:/home/martin/julia-1.9.3/bin

typeset -A info=(
	# TODO: need to write JSON converter; the tests work by converting JSON to
	# Julia code (Julia doesn't have a JSON parser in stdlib).
	#
	# Also, it's very slow to run "julia"; there's like a second of startup time
	# for every test(!)
	skip    '1'

	lang    'Julia'
	toml    '1.0'
	site    'https://github.com/JuliaLang/TOML.jl'
	src     'https://github.com/JuliaLang/TOML.jl.git'
	decoder 'julia-TOML-decode.jl'
	encoder 'N/A'
	perf    ''
)
