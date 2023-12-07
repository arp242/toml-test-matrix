deps() { print 'dotnet' }

setup() {
	(
		if [[ ! -d cs-tomlyn-decoder ]]; then
			dotnet new console -o cs-tomlyn-decoder -f net6.0

			(
				cd cs-tomlyn-decoder
				rm Program.cs
				dotnet add package Tomlyn --version 0.16.2
				dotnet add package Newtonsoft.Json --version=13.0.3
			)
		fi
		cd cs-tomlyn-decoder
		cp ../../../scripts/cs-tomlyn-decoder.cs .
		dotnet build -c Release
	)
	(
		if [[ ! -d cs-tomlyn-encoder ]]; then
			dotnet new console -o cs-tomlyn-encoder -f net6.0

			(
				cd cs-tomlyn-encoder
				rm Program.cs
				dotnet add package Tomlyn --version 0.16.2
				dotnet add package Newtonsoft.Json --version=13.0.3
			)
		fi
		cd cs-tomlyn-encoder
		cp ../../../scripts/cs-tomlyn-encoder.cs .
		dotnet build -c Release
	)
	(
		if [[ ! -d cs-tomlyn-perf ]]; then
			dotnet new console -o cs-tomlyn-perf -f net6.0

			(
				cd cs-tomlyn-perf
				rm Program.cs
				dotnet add package Tomlyn --version 0.16.2
			)
		fi
		cd cs-tomlyn-perf
		cp ../../../scripts/cs-tomlyn-perf.cs .
		dotnet build -c Release
	)
}

typeset -A info=(
	lang    'C#'
	toml    '1.0'
	site    'https://github.com/xoofx/Tomlyn'
	src     'git@github.com:xoofx/Tomlyn.git'
	version '0.16.2'
	decoder 'cs-tomlyn-decoder/bin/Release/net6.0/cs-tomlyn-decoder'
	encoder 'TODO'
	perf    'cs-tomlyn-perf/bin/Release/net6.0/cs-tomlyn-perf'
)

