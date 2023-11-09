#!/usr/bin/env node

let fs   = require('fs');
let toml = require('./lib/index.js');

fs.readFile(process.argv[2], 'utf8', (err, data) => {
	if (err) {
		console.error(err)
		process.exit(1)
	}

	let s = Date.now()
	toml.parseTOML(data)
	process.stdout.write(`${(Date.now() - s) / 1000}`)
})
