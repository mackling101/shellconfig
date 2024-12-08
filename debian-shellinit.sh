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
sed -i 's/ZSH_THEME=".*"/ZSH_THEME="darkblood"/'

# Apply changes
exec zsh

echo "Installation and configuration complete!"