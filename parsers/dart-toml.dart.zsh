if [[ -f ./toolchain/dart-sdk/bin/dart ]]; then
	path+=($PWD/toolchain/dart-sdk/bin)
fi

deps() { print 'dart' }

setup() {
	mkdir -p build/bin
	dart pub get
	dart compile exe -o build/bin/decoder bin/decoder.dart
	dart compile exe -o build/bin/encoder bin/encoder.dart

	cp ../../scripts/dart-toml.dart-perf.dart ./perf.dart
	dart compile exe -o perf perf.dart
}

typeset -A info=(
	lang    'Dart'
	toml    '1.0'
	site    'https://github.com/just95/toml.dart'
	src     'https://github.com/just95/toml.dart.git'
	decoder 'build/bin/decoder'
	encoder 'build/bin/encoder'
	perf    'perf'
)
