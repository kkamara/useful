
if [[ "$USER" == "root" ]]; then
    echo "Please run this script as non-root user"
    exit 1
fi

echo "Updating, upgradng & autoremoving..."
sudo apt-get update -y &&
    sudo apt-get upgrade -y &&
    sudo apt-get autoremove -y

echo "Downloading package tools..."
packageTools=(
    wget
    exo-utils
    vlc
    gedit
    openssh-server
    openssh-client
    vim
    neofetch
    rar
    zip
)
for packageTool in "${packageTools[@]}"
    do
        echo "- Downloading $packageTool"
        sudo apt-get install -y $packageTool
    done

installPath="$HOME/Downloads"
echo "Downloading tools to $installPath..."
echo "Downloading xampp..."
wget https://downloads.sourceforge.net/project/xampp/XAMPP%20Linux/7.4.20/xampp-linux-x64-7.4.20-0-installer.run?ts=gAAAAABgxTJ9V7E870D28F96cXrVcfydhjfG8QZZaopd4CzJL8eCx_m12mmADkBbg5f0xd51lt6FTZdzbc8v0iOCW_U8h91uwA%3D%3D&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fxampp%2Ffiles%2Flatest%2Fdownload $installPath
echo "Downloading vscode..."
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64 $installPath
echo "Downloading dbeaver..."
wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb $installPath
echo "Downloading zoom..."
wget https://zoom.us/client/latest/zoom_amd64.deb $installPath
echo "Downloading discord..."
wget https://discord.com/api/download?platform=linux&format=deb $installPath
echo "Downloading slack..."
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.16.0-amd64.deb $installPath
echo "Downloading mega..."
wget https://mega.nz/linux/MEGAsync/xUbuntu_16.04/amd64/megasync_4.4.0-1.1_amd64.deb $installPath

echo "Installing spotify..."
sudo snap install spotify

echo "To manually download..."
manualInstallTools=(
    postman
    chrome
)
for manualInstallTool in "${manualInstallTools[@]}"
    do
        echo "- $manualInstallTool"
    done

