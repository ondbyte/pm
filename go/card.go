package pipeman

import "fmt"

type Runs func(in CardInput, out CardOutput) (err error)

type portType any

type PortType func() portType

func String() portType {
	return portType("")
}

func Number() portType {
	return portType(float64(0))
}
func Boolean() portType {
	return portType(false)
}
func Object() portType {
	return portType(map[string]any{})
}
func Array() portType {
	return portType([]any{})
}

type Card interface {
	TakesIn(portName string, portType PortType) Card
	SpitsOut(portName string, portType PortType) Card
	Runs(runs Runs) Card
	externalCard()
}

type externalCard struct {
	card
}

func (externalCard) externalCard() {}

type InternalCard card

type card struct {
	Name string         `json:"name"`
	In   map[string]any `json:"in"`
	Out  map[string]any `json:"out"`
	run  Runs
}

func NewCard(name string) Card {
	return &externalCard{
		card: card{
			Name: name,
			In:   map[string]any{},
			Out:  map[string]any{},
		},
	}
}

// Run implements Card.
func (c *InternalCard) Run(in CardInput, out CardOutput) (err error) {
	return c.run(in, out)
}

// arg type/default values this card takes
func (c *externalCard) TakesIn(name string, portType PortType) Card {
	c.In[name] = portType().(any)
	return c
}

// values which this card spits out
func (c *externalCard) SpitsOut(name string, portType PortType) Card {
	c.Out[name] = portType().(any)
	return c
}

// passed fn which runs when this card is called with arg 'in' which you defined using 'TakesIn' method and
// returns the values you defined using 'SpitsOut' method
func (c *externalCard) Runs(run Runs) Card {
	c.run = run
	return c
}

type CardOutput map[string]any

func setPortVal[T any](po CardOutput, portName string, val T) error {
	v2, ok := po[portName]
	if !ok {
		return fmt.Errorf("card doesnt have a spit out port with name " + portName)
	}
	_, ok = v2.(T)
	if !ok {
		return fmt.Errorf("card doesnt spit out type '%t' at port "+portName, val)
	}
	po[portName] = val
	return nil
}

func (po CardOutput) SetNumber(portName string, val float64) error {
	return setPortVal(po, portName, val)
}

func (po CardOutput) SetString(portName string, val string) error {
	return setPortVal(po, portName, val)
}

func (po CardOutput) SetBoolean(portName string, val bool) error {
	return setPortVal(po, portName, val)
}

func (po CardOutput) SetObject(portName string, val map[string]any) error {
	return setPortVal(po, portName, val)
}

func (po CardOutput) SetArray(portName string, val []any) error {
	return setPortVal(po, portName, val)
}

type CardInput map[string]any

func getPortVal[T any](p CardInput, portName string) (T, error) {
	v, ok := p[portName]
	if !ok {
		return *new(T), fmt.Errorf("no value for port " + portName)
	}
	v2, ok := v.(T)
	if !ok {
		return *new(T), fmt.Errorf("invalid type for port value " + portName)
	}
	return v2, nil
}

func (p CardInput) GetNumber(portName string) (float64, error) {
	return getPortVal[float64](p, portName)
}

func (p CardInput) GetString(portName string) (string, error) {
	return getPortVal[string](p, portName)
}

func (p CardInput) GetBoolean(portName string) (bool, error) {
	return getPortVal[bool](p, portName)
}

func (p CardInput) GetObject(portName string) (map[string]any, error) {
	return getPortVal[map[string]any](p, portName)
}

func (p CardInput) GetArray(portName string) ([]any, error) {
	return getPortVal[[]any](p, portName)
}
