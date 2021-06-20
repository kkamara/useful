package main

import (
	_ "github.com/fatih/color"
	"github.com/kkamara/useful/debian-desktop-setup/config"
	"github.com/kkamara/useful/debian-desktop-setup/models"
	"github.com/urfave/cli/v2"
	"log"
	"os"
)

func main() {

	app := &cli.App{
		Name:   config.AppName,
		Usage:  config.AppUsage,
		Action: models.Action,
		Flags: []cli.Flag{
			&cli.StringFlag{
				Name:        "install-path",
				Value:       "$HOME/Downloads",
				Usage:       "Dir path for storing downloaded resources",
				Destination: &config.InstallPath,
			},
			&cli.BoolFlag{
				Name:        "is-ubuntu-os",
				Value:       false,
				Usage:       "Specify whether your installed os is a Ubuntu distro (Y/n)",
				Destination: &config.IsUbuntuOs,
			},
			&cli.BoolFlag{
				Name:        "skip-composer",
				Value:       false,
				Usage:       "Skips composer setup (Y/n)",
				Destination: &config.SkipComposer,
			},
		},
	}

	err := app.Run(os.Args)
	if err != nil {
		log.Fatal(err)
	}
}
