A test matrix of TOML implementations: https://arp242.github.io/toml-test-matrix

Rather incomplete at the moment, should add more parsers from
https://github.com/toml-lang/toml/wiki

Adding a parser
---------------
See `new-parser.zsh` for a template with instructions.

Running it
----------
The results are committed in git, so you don't really need to run it unless
you're adding a new parser.

That said, use `./run` to generate the files. You'll need zsh, git, and the
dependencies to build stuff (e.g. compilers/interpreters). It's not super
well-documented: see if you get "command not found" errors and fix them 🙃
