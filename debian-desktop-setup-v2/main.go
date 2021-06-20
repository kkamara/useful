package main

import (
	"fmt"
	_ "github.com/fatih/color"
	"github.com/urfave/cli/v2"
	"log"
	"os"
)

var (
	appName  = "Debian Desktop Setup v2"
	appUsage = "installs debian desktop tools & packages custom for https://kelvinkamara.com"
)

func main() {
	var (
		installPath  string = "$HOME/Downloads"
		isUbuntuOs   bool
		skipComposer bool
	)

	app := &cli.App{
		Name:  appName,
		Usage: appUsage,
		Action: func(c *cli.Context) error {
			fmt.Println(
				installPath,
				isUbuntuOs,
				skipComposer,
			)
			return nil
		},
		Flags: []cli.Flag{
			&cli.StringFlag{
				Name:        "install-path",
				Value:       "$HOME/Downloads",
				Usage:       "Dir path for storing downloaded resources",
				Destination: &installPath,
			},
			&cli.BoolFlag{
				Name:        "is-ubuntu-os",
				Value:       false,
				Usage:       "Specify whether your installed os is a Ubuntu distro (Y/n)",
				Destination: &isUbuntuOs,
			},
			&cli.BoolFlag{
				Name:        "skip-composer",
				Value:       false,
				Usage:       "Skips composer setup (Y/n)",
				Destination: &skipComposer,
			},
		},
	}

	err := app.Run(os.Args)
	if err != nil {
		log.Fatal(err)
	}
}
