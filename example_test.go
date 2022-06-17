package example

import (
	"fmt"
	"testing"
)

func TestFoo(t *testing.T) {
	fmt.Println("Hello!!!")
}

func TestBar(t *testing.T) {
	t.Fail()
}
