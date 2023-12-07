deps() { print 'cargo rustc' }

setup() {
	cd scripts
	cargo build --release
}

typeset -A info=(
	lang    'Rust'
	toml    '1.0'
	site    'https://github.com/toml-rs/toml/tree/main/crates/toml_edit'
	src     '' # We use the Cargo.toml for now 'git@github.com:toml-rs/toml.git'
	version '0.20.1'
	decoder './scripts/target/release/toml_edit-decoder'
	encoder './scripts/target/release/toml_edit-encoder'
	perf    './scripts/target/release/rust-toml_edit-perf'
)
