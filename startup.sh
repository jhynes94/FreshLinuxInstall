#!/bin/bash
### Fresh install for a new Ubuntu derivative

# Assign user name
read -p "Enter your user name: " UserName
read -p "Enter your full name: " MyName
read -p "Enter your email address: " MyEmail

# update all
apt-get update
apt-get -y upgrade

# usr functions
apt-get -y install vim
apt-get -y install terminator
apt-get -y install terminator
sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)
apt install tixati

# Good luck with OpenVPN
# https://openvpn.net/cloud-docs/openvpn-3-client-for-linux/
sudo apt install apt-transport-https
sudo wget https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub
sudo apt-key add openvpn-repo-pkg-key.pub

# tools
apt-get -y install ssh
apt-get -y install git
apt-get -y install htop

### git commands
# sudo -u $UserName git config --global user.name $MyName
# sudo -u $UserName git config --global user.email $MyEmail
# sudo -u $UserName git config --global core.editor vim
# sudo -u $UserName git config --global core.excludesfile ~/.gitignore_global
# sudo -u $UserName git config --global color.ui true


* Tixati
* KeypassX
* KICAD
* Visual Studio Code
* Vim or better update of this

# Update .bashrc by appending file to it.
date >> output.txt

