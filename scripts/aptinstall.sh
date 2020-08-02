#!/bin/bash

figletIn=0

#sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

installDependencies()
{
    # Essential development and OS tools
    sudo apt-get -y install build-essential curl file git jq python3-pip zip unzip

    if [ $(which curl | grep 'bin' | wc -l) -ne 0 ]; then curl --version | head -n 1; fi
    if [ $(which file | grep 'bin' | wc -l) -ne 0 ]; then file --version | head -n 1; fi
    if [ $(which git | grep 'bin' | wc -l) -ne 0 ]; then git --version; fi
    if [ $(which jq | grep 'bin' | wc -l) -ne 0 ]; then jq --version; fi
    if [ $(which pip3 | grep 'bin' | wc -l) -ne 0 ]; then pip3 --version; fi
    if [ $(which zip | grep 'bin' | wc -l) -ne 0 ]; then zip -v | head -n 2 | tail -n 1; fi
    if [ $(which unzip | grep 'bin' | wc -l) -ne 0 ]; then unzip | head -n 1; fi
}

installFunStuff()
{
  install figlet
  install lolcat 
 echo "install feglet"

  if type figlet; then 
    figletIn=1
  fi

}

installHomeBrew()
{
    # Installs homebrew package manager
    if [ $(brew config 2>/dev/null | grep HOMEBREW_VERSION | wc -l) -eq 0 ]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
        export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
    else
        echo -e "$TICK homebrew already installed"
        brew --version
    fi

    if [[ figletIn ]]; then figlet "Homebrew Installed" | lolcat; fi
}

installDependencies
installFunStuff
installHomeBrew

# Basics
# install awscli
# install chromium-browser
# install curl
# install exfat-utils
# install file
# install git
# install htop
# install nmap
# install openvpn
# install tmux
# install vim

# Image processing
# install gimp
# install jpegoptim
# install optipng

# Fun stuff
# install figlet
# install lolcat
