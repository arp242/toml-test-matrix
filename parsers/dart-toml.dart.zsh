deps() { print 'dart' }

setup() {
	mkdir -p build/bin
	dart pub get
	dart compile exe -o build/bin/decoder bin/decoder.dart
	dart compile exe -o build/bin/encoder bin/encoder.dart

	cp ../../scripts/dart-toml.dart-perf.dart ./perf.dart
	dart compile exe -o perf perf.dart
}

export PATH=$PATH:~/.local/dart-sdk/bin

typeset -A info=(
	lang    'Dart'
	toml    '1.0'
	site    'https://github.com/just95/toml.dart'
	src     'git@github.com:just95/toml.dart.git'
	decoder 'build/bin/decoder'
	encoder 'build/bin/encoder'
	perf    'perf'
)
