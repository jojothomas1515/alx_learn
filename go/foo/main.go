package main

import (
	"reflect"
	"fmt"
)

mg := "this is global";

func main() {
	var name string = "Jojo Thomas";
	fmt.Println(reflect.TypeOf(name));
	fmt.Println(mg)
}
