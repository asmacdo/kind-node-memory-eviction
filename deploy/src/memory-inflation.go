package main

import (
	"fmt"
	"net/http"
	"os"
	// runt "runtime"
	logf "sigs.k8s.io/controller-runtime/pkg/log"
)

var log = logf.Log.WithName("memory-inflation")

// func PrintMemUsage(i int) {
// 	var m runt.MemStats
// 	runt.ReadMemStats(&m)
// 	log.Info("Iter: %v | ALLOC: %v\n", i, m.Alloc/(1000*1000))
// }

func main() {
	var PORT string
	if PORT = os.Getenv("PORT"); PORT == "" {
		PORT = "3001"
	}
	http.HandleFunc("/blowup", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Memory expansion triggered.\n")
		log.Info("Sanity check")
		// PrintMemUsage(0)
	})
	http.ListenAndServe(":"+PORT, nil)
}
