#[derive(Copy, Clone)]
pub struct Decoder;

impl toml_test_harness::Decoder for Decoder {
    fn name(&self) -> &str {
        "toml"
    }

    fn decode(&self, data: &[u8]) -> Result<toml_test_harness::Decoded, toml_test_harness::Error> {
        let data = std::str::from_utf8(data).map_err(toml_test_harness::Error::new)?;
        let table = boml::Toml::parse(&data)
            .map_err(|err| toml_test_harness::Error::new(format!("{err:?}")))?
            .into_table();
        table_to_decoded(&table)
    }
}

fn value_to_decoded(
    value: &boml::types::TomlValue,
) -> Result<toml_test_harness::Decoded, toml_test_harness::Error> {
    match value {
        boml::types::TomlValue::Integer(v) => Ok(toml_test_harness::Decoded::Value(
            toml_test_harness::DecodedValue::from(*v),
        )),
        boml::types::TomlValue::String(v) => Ok(toml_test_harness::Decoded::Value(
            toml_test_harness::DecodedValue::from(v.as_str()),
        )),
        boml::types::TomlValue::Float(v) => Ok(toml_test_harness::Decoded::Value(
            toml_test_harness::DecodedValue::from(*v),
        )),
        boml::types::TomlValue::OffsetDateTime => Ok(toml_test_harness::Decoded::Value(
            toml_test_harness::DecodedValue::from("OffsetDateTime"),
        )),
        boml::types::TomlValue::LocalDateTime => Ok(toml_test_harness::Decoded::Value(
            toml_test_harness::DecodedValue::from("LocalDateTime"),
        )),
        boml::types::TomlValue::LocalDate => Ok(toml_test_harness::Decoded::Value(
            toml_test_harness::DecodedValue::from("LocalDate"),
        )),
        boml::types::TomlValue::LocalTime => Ok(toml_test_harness::Decoded::Value(
            toml_test_harness::DecodedValue::from("LocalTime"),
        )),
        boml::types::TomlValue::Boolean(v) => Ok(toml_test_harness::Decoded::Value(
            toml_test_harness::DecodedValue::from(*v),
        )),
        boml::types::TomlValue::Array(v) => {
            let v: Result<_, toml_test_harness::Error> = v.iter().map(value_to_decoded).collect();
            Ok(toml_test_harness::Decoded::Array(v?))
        }
        boml::types::TomlValue::Table(v) => table_to_decoded(v),
    }
}

fn table_to_decoded(
    value: &boml::table::Table,
) -> Result<toml_test_harness::Decoded, toml_test_harness::Error> {
    let table: Result<_, toml_test_harness::Error> = value
        .iter()
        .map(|(k, v)| {
            let k = k.to_owned();
            let v = value_to_decoded(v)?;
            Ok((k, v))
        })
        .collect();
    Ok(toml_test_harness::Decoded::Table(table?))
}
