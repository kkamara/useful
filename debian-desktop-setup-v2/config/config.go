package config

// App config
var (
	AppName  = "Debian Desktop Setup v2"
	AppUsage = "installs debian desktop tools & packages custom for https://kelvinkamara.com"
)

// CLI Args
var (
	InstallPath  string = "$HOME/Downloads"
	IsUbuntuOs   bool
	SkipComposer bool
)
