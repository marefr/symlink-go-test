package something

import "testing"

func TestSomething(t *testing.T) {
	str := Test()
	if str != "test" {
		t.Fail()
	}
}
