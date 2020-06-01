package main

import "fmt"

var (
    version = "dev"
    commit  = "none"
    date    = "unknown"
)

func main() {
      fmt.Printf("my app %s, commit %s, built at %s\n", version, commit, date)
}

