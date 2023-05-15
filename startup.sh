#!/bin/bash
### Fresh install for a new Ubuntu derivative

# Assign user name for GIT
echo Enter the following git credentials
read -p "Enter your user name: " UserName
read -p "Enter your full name: " MyName
read -p "Enter your email address: " MyEmail
sudo apt -y install git

# update all
sudo apt update
sudo apt -y upgrade

# usr functions
sudo apt -y install vim
sudo apt -y install tmux
sudo apt -y install curl
# sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)
curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh

# tools
sudo apt -y install ssh
sudo apt -y install htop
sudo apt -y install qbittorrent
sudo apt -y install chromium-browser
sudo apt -y install neofetch
sudo snap install code #May not work on non ubuntu

# Install Keypass
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt update
sudo apt -y install keepassxc

### git commands
sudo -u $UserName git config --global user.name $MyName
sudo -u $UserName git config --global user.email $MyEmail
sudo -u $UserName git config --global core.editor vim
# sudo -u $UserName git config --global core.excludesfile ~/.gitignore_global
sudo -u $UserName git config --global color.ui true

# Update .bashrc by appending file to it.
sudo ./appendBashrc.txt >> ~/.bashrc

# Installs NVM (Node Version Manager) and the latest version of nodejs
wget -qO- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc
nvm install node

# Install rbenv
sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

#Setup SSH Keys
ssh-keygen

# Congrats!
echo Install script completed.
