
if [[ "$USER" == "root" ]]; then
    echo "Please run this script as non-root user"
    exit 1
fi

read -p 'Are you using ubuntu os? (Y/n): ' isUbuntuOs
isUbuntuOs="${isUbuntuOs,,}" # to lowercase string

installingDocker=1
if [[ "$isUbuntuOs" == "y" ]]; then
    echo 'We will be installing docker & docker-compose during this script...'
else
    installingDocker=0
    echo 'We will skip installing docker & docker-compose during this script...'
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

if [[ "$installingDocker" == 1 ]]; then
    echo "Installing docker..."
    sudo apt-get purge -y docker \
        docker-engine \
        docker.io \
        containerd \
        runc
    
    sudo apt-get update

    sudo apt-get install -y apt-transport-https \
        ca-certificates \
        curl \
        gnupg \
        lsb-release
    
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | 
        sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

    echo \
        "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

    sudo apt-get update
    
    sudo apt-get install -y docker-ce \
        docker-ce-cli \
        containerd.io
    
    echo "Installing docker-compose..."
    sudo rm /usr/local/bin/docker-compose 2>&1

    sudo curl -L \
        "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" \
        -o /usr/local/bin/docker-compose
    
    sudo chmod +x /usr/local/bin/docker-compose
fi

echo "To manually download..."
manualInstallTools=(
    postman
    chrome
    composer
)
for manualInstallTool in "${manualInstallTools[@]}"
    do
        echo "- $manualInstallTool"
    done

