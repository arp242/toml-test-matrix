#!/usr/bin/env julia

#t = TOML.parse(join(readlines(), "\n"))
#
#print(JSON.json(t), "\n")

function julia_main()::Cint
	# do something based on ARGS?
	@time print("Hello\n")
	return 0 # if things finished successfully
end

