+++
date = "2015-03-02T11:13:00+10:00"
draft = false
title = "Go Language from Google"

+++

# Go Language from Google

Go (or Golang) is a compiled language and comes with full featured library. It is like Python combined with C++.

[Download Go](https://storage.googleapis.com/golang/go1.4.2.windows-386.msi) and install.

Create a new file . e.g. `test.go`
{{< highlight go >}}
package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
)

func main() {
	response, err := http.Get("http://google.com/")
	if err != nil {
		log.Fatal(err)
	}
	contents, err := ioutil.ReadAll(response.Body)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Printf("%sn", string(contents))
}
{{< /highlight >}}

Compile
{{< highlight shell >}}
go build test.go
{{< /highlight >}}

The generated `test.exe` is portable and can be use on any windows machine.