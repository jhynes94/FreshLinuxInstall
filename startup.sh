#!/bin/bash
### Fresh install for a new Ubuntu derivative

# Assign user name
read -p "Enter your user name: " UserName
read -p "Enter your full name: " MyName
read -p "Enter your email address: " MyEmail

# update all
sudo apt update
sudo apt -y upgrade

# usr functions
sudoapt -y install vim
sudo apt -y install terminator
sudo apt -y install terminator
# sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)
curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh
sudo apt -y install tixati

# Good luck with OpenVPN
# https://openvpn.net/cloud-docs/openvpn-3-client-for-linux/
sudo apt install apt-transport-https
sudo wget https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub
sudo apt-key add openvpn-repo-pkg-key.pub

# tools
sudo apt -y install ssh
sudo apt -y install git
sudo apt -y install htop
sudo apt -y install tixati

# Install Keypass
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt update
sudo apt -y install keepassxc

### git commands
# sudo -u $UserName git config --global user.name $MyName
# sudo -u $UserName git config --global user.email $MyEmail
# sudo -u $UserName git config --global core.editor vim
# sudo -u $UserName git config --global core.excludesfile ~/.gitignore_global
# sudo -u $UserName git config --global color.ui true

# Update .bashrc by appending file to it.
sudo ./appendBashrc.txt >> ~/.bashrc
