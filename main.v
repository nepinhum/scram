module main

import os
import rand

fn main() {
	if os.args.len != 2 {
		eprintln('Usage: scram <text>')
		exit(1)
	}
	// Fisher-Yates shuffle algorithm (Durstenfeld)
	mut chars := os.args[1].runes()

	for i := chars.len - 1; i > 0; i-- {
		j := rand.intn(i + 1) or { panic(err) }
		chars[i], chars[j] = chars[j], chars[i]
	}

	println(chars.string())
}
