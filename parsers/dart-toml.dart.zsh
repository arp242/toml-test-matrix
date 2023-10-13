setup() {
	export PATH=$PATH:~/.local/dart-sdk/bin
	mkdir -p build/bin
	dart pub get
	dart compile exe -o build/bin/decoder bin/decoder.dart
	dart compile exe -o build/bin/encoder bin/encoder.dart
}

typeset -A info=(
	lang    'Dart'
	toml    '1.0'
	site    'https://github.com/just95/toml.dart'
	src     'git@github.com:just95/toml.dart.git'
	decoder 'build/bin/decoder'
	encoder 'build/bin/encoder'
	perf    'TODO'
)

