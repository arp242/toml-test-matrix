#!/usr/bin/env dart

import 'dart:async';
import 'dart:io';
import 'package:toml/toml.dart';

void main(List<String> args) {
	File(args[0]).readAsString().then((String data) {
		Stopwatch sw = new Stopwatch()..start();
		var document = TomlDocument.parse(data).toMap();
		print(sw.elapsedMilliseconds / 1000);
	});
}
