fn main() {
    let mut args = std::env::args_os();
    args.next();
    let path = std::path::PathBuf::from(args.next().expect("Missing TOML path argument"));
    let raw = std::fs::read_to_string(&path).unwrap();
    let timer = std::time::Instant::now();
    let value = raw.parse::<toml_edit::Document>();
    let delta = timer.elapsed().as_nanos();
    value.unwrap();
    print!("{delta}");
}
