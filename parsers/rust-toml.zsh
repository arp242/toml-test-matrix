setup() {
	cd scripts
	cargo build --release
}

typeset -A info=(
	lang    'Rust'
	toml    '1.0'
	site    'https://github.com/toml-rs/toml'
	src     '' # We use the Cargo.toml for now 'git@github.com:toml-rs/toml.git'
	version '0.8.1'
	decoder 'scripts/target/release/toml-decoder'
	encoder 'scripts/target/release/toml-encoder'
	perf    'scripts/target/release/rust-toml-perf'
)
