package main

import (
	"os"

	"github.com/pelletier/go-toml/v2"
)

func main() {
	fp, err := os.Open(os.Args[1])
	if err != nil {
		panic(err)
	}
	defer fp.Close()

	var m map[string]interface{}
	err = toml.NewDecoder(fp).Decode(&m)
	if err != nil {
		panic(err)
	}
}
