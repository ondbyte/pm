package pipeman_test

import (
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"testing"

	pipeman "github.com/ondbyte/pm/go"
	"github.com/stretchr/testify/assert"
)

func getCurrentTestFolderPath() string {
	_, file, _, ok := runtime.Caller(1)
	if !ok {
		return ""
	}
	return filepath.Dir(file)
}

func TestCardsProgram(t *testing.T) {
	// testfile path is used to find the math_cards folder
	testFilePath := getCurrentTestFolderPath()
	cmd := exec.Command("go", "run", filepath.Join(testFilePath, "math_cards"))
	cmd.Env = append(cmd.Env, os.Environ()...)
	_cards, closeMathCardsProg, err := pipeman.LoadCardsRunnerFromACmd(cmd)
	if err != nil {
		t.Fatal(err)
	}
	assert := assert.New(t)
	if assert.NotEmpty(_cards) {
		sumCard := _cards[0]
		assert.Equal("sum", sumCard.Name)
		in := pipeman.CardInput{"a": 20, "b": 10}
		out := pipeman.CardOutput{"sum": 0}
		err := sumCard.Run(in, out)
		if assert.NoError(err) {
			assert.Equal(float64(30), out["sum"])
		}
	}
	closeMathCardsProg <- struct{}{}
}
