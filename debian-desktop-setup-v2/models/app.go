package models

import (
	"fmt"
	"github.com/kkamara/useful/debian-desktop-setup/config"
	"github.com/urfave/cli/v2"
)

func Action(c *cli.Context) error {
	fmt.Println(
		config.AppName,
		config.InstallPath,
		config.IsUbuntuOs,
		config.SkipComposer,
	)
	return nil
}
