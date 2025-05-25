# pm - langauge interfaces for pipeman
using these language interfaces you can implement cards for pipeman

## currently supported languages
golang

## example of usage
### golang
```sh
go get github.com/ondbyte/pm@latest
```
to implement cards in go
```go
package main

import (
	"fmt"

	pipeman "github.com/ondbyte/pm/go"
)

func main() {
	err := pipeman.RunCards(
		"maths cards",
		pipeman.NewCard("sum").TakesIn("a", pipeman.Number).TakesIn("b", pipeman.Number).SpitsOut("sum", pipeman.Number).
			Runs(func(in pipeman.CardInput, out pipeman.CardOutput) (err error) {
				a, err := in.GetNumber("a")
				if err != nil {
					return fmt.Errorf("failed to set value to input port 'a'")
				}
				b, err := in.GetNumber("b")
				if err != nil {
					return fmt.Errorf("failed to set value to input port 'b'")
				}
				err = out.SetNumber("sum", a+b)
				if err != nil {
					return fmt.Errorf("failed to set value to ouput port 'sum'")
				}
				return
			}),
	)
	if err != nil {
		panic(err)
	}
}

```