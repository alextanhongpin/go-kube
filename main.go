package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprint(w, `{"msg":"hello world"}`)
	})
	fmt.Println("listening to port *:8080")
	http.ListenAndServe(":8080", nil)
}
