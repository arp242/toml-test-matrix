fn main() {
    let mut args = std::env::args_os();
    args.next();
    let path = std::path::PathBuf::from(args.next().expect("Missing TOML path argument"));
    let raw = std::fs::read_to_string(&path).unwrap();
    let timer = std::time::Instant::now();
    let mut parsed = taplo::parser::parse(&raw);
    let parse_errors = std::mem::take(&mut parsed.errors);
    let node = parsed.into_dom();
    let validation = node.validate();
    let delta = timer.elapsed().as_secs_f32();
    assert!(parse_errors.is_empty(), "{parse_errors:#?}");
    assert!(
        validation.is_ok(),
        "{:#?}",
        validation.unwrap_err().collect::<Vec<_>>()
    );
    println!("{delta}");
}
