//go:build mage

package main

import (
	"bytes"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
)

var supportedLangs = []string{"go"}

func Gen_protos() error {
	if exec.Command("buf").Run() != nil {
		switch runtime.GOOS {
		case "windows":
			if bs, err := exec.Command("scoop", "install", "buf").CombinedOutput(); err != nil {
				return fmt.Errorf("err while installing buf: %v\n%v", err, string(bs))
			}
		case "linux", "darwin":
			if bs, err := exec.Command("brew", "install", "bufbuild/buf/buf").CombinedOutput(); err != nil {
				return fmt.Errorf("err while installing buf: %v\n%v", err, string(bs))
			}
		default:
			return fmt.Errorf("unsupported os: %v", runtime.GOOS)
		}
	}
	// buf generate --template buf.gen.json
	if bs, err := exec.Command("buf", "generate").CombinedOutput(); err != nil {
		return fmt.Errorf("err while buf generate: %v\n%v", err, string(bs))
	}
	return nil
}

func Gen_proto() error {
	if exec.Command("proman").Run() != nil {
		if err := exec.Command("go", "install", "github.com/ondbyte/proman@latest").Run(); err != nil {
			return err
		}
	}

	for _, v := range supportedLangs {
		opDir := filepath.Join("protos", v)
		if _, err := os.Stat(opDir); err != nil {
			if err := os.MkdirAll(opDir, os.ModePerm); err != nil {
				return err
			}
		}
		cmd := exec.Command(
			"proman",
			"gen",
			"--lang",
			v,
			"--in",
			"./protos",
			"--out",
			opDir,
			"--grpc",
		)
		stdErr := bytes.NewBuffer(nil)
		cmd.Stderr = stdErr
		cmd.Stdout = stdErr
		err := cmd.Run()
		if err != nil {
			return fmt.Errorf("err while proman gen: %v\n%v", err, string(stdErr.Bytes()))
		}
	}
	fmt.Println("generated protos for langs: ", strings.Join(supportedLangs, ", "))
	return nil
}
