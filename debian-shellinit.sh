#!/bin/bash

# Update apt sources and upgrade
sudo apt update -y

# Install tmux
sudo apt install -y tmux

# Install zsh
sudo apt install -y zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Set the theme to 'darkblood'
sudo sed -i 's/ZSH_THEME=".*"/ZSH_THEME="darkblood"/' ~/.zshrc

# create tmux.conf and source files (if utilizing your own repo update the curl refs)
curl https://raw.githubusercontent.com/mackling101/shellconfig/refs/heads/main/tmux/.tmux.conf -O
curl https://raw.githubusercontent.com/mackling101/shellconfig/refs/heads/main/tmux/.file.conf -O

#Install complete
echo "Installation and configuration complete!"

chsh -s /bin/zsh $USER

exec zsh