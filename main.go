package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"strconv"
)

func handler(w http.ResponseWriter, r *http.Request) {
	path := r.URL.Path[1:]
	code, _ := strconv.Atoi(path)
	w.WriteHeader(code)
	fmt.Fprintf(w, "Hello, World %s", path)
}
func main() {

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}

	http.HandleFunc("/", handler)
	log.Printf("Listening on port %s", port)
	log.Fatal(http.ListenAndServe(fmt.Sprintf(":%s", port), nil))
}
