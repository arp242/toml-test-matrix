setup() {
	:
}

typeset -A info=(
	skip    '1' # TODO

	lang    'Julia'
	toml    '1.0'
	site    'https://github.com/JuliaLang/TOML.jl'
	src     'git@github.com:JuliaLang/TOML.jl.git'
	version ''
	decoder 'toml-decode.jl'
	encoder 'N/A'
	perf    ''
)

# cat >/dev/null <<EOF
# #!/home/martin/julia-1.9.3/bin/julia
# 
# # TODO: this takes forever; Julia has ~0.5s startup time.
# # TODO: actually annotate with JSON types; the tests in Julia work the reverse:
# # remove the annotations and compare to parsed TOML.
# 
# # Only needed once; as JSON isn't in stdlib
# # import Pkg; Pkg.add("JSON")
# 
# using JSON
# using TOML
# 
# const jsnval = Dict{String,Function}(
#     "string" =>identity,
#     "float"    => (s -> Base.parse(Float64, s)),
#     "integer"  => (s -> Base.parse(Int64, s)),
#     "datetime" => (s -> Base.parse(DateTime, endswith(s, 'Z') ? chop(s) : s)),
#     "datetime-local" => (s -> Base.parse(DateTime, endswith(s, 'Z') ? chop(s) : s)),
#     "date-local" => (s -> Base.parse(DateTime, endswith(s, 'Z') ? chop(s) : s)),
#     "time-local" => (s -> Base.parse(Time, s)),
#     "array"    => (a -> map(jsn2data, a)),
#     "bool"     => (b -> b == "true")
# )
# 
# function jsn2data(jsn)
#     if "type" in keys(jsn)
#         jsnval[jsn["type"]](jsn["value"])
#     elseif jsn isa Vector
#         [jsn2data(v) for v in jsn]
#     else
#         Dict{String,Any}([k => jsn2data(v) for (k, v) in jsn])
#     end
# end
# 
# t = TOML.parse(join(readlines(), "\n"))
# 
# print(JSON.json(t), "\n")
# EOF
