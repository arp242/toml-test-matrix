deps() { print 'dotnet' }

setup() {
	(
		if [[ ! -d cs-tommy-decoder ]]; then
			dotnet new console -o cs-tommy-decoder -f net6.0

			(
				cd cs-tommy-decoder
				rm Program.cs
				dotnet add package Tommy --version 3.1.2
			)
		fi
		cd cs-tommy-decoder
		cp ../Tommy.Tests/Util/* .
		cp ../../../scripts/cs-tommy-decoder.cs .
		dotnet build -c Release
	)
}

typeset -A info=(
	# TODO: doesn't contain anything for toml-test
	skip 1

	lang    'C#'
	toml    '1.0'
	site    'https://github.com/dezhidki/Tommy'
	src     'https://github.com/dezhidki/Tommy.git'
	version '3.1.2'
	decoder ''
	encoder 'TODO'
	perf    ''
)
