#!/usr/bin/env node

import { readFile } from 'fs'
import { parse }    from './dist/index.js'

readFile(process.argv[2], 'utf8', (err, data) => {
	if (err) {
		console.error(err)
		process.exit(1)
	}

	let s = Date.now()
	parse(data)
	process.stdout.write(`${(Date.now() - s) / 1000}`)
})
