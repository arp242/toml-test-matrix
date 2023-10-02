setup() {
	cd scripts
	cargo build --release
}

typeset -A info=(
	lang    'Rust'
	toml    '1.0'
	site    'https://github.com/dtolnay/basic-toml'
	src     '' # We use the Cargo.toml for now 'git@github.com:dtolnay/basic-toml.git'
	version '0.1.4'
	decoder './scripts/target/release/basic-toml-decoder'
	encoder './scripts/target/release/basic-toml-encoder'
	perf    './scripts/target/release/rust-basic-toml-perf'
)
