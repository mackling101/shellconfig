#!/bin/bash

# Update apt sources and upgrade
sudo apt update -y

# Install zsh
sudo apt install -y zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set the theme to 'darkblood'
sed -i 's/ZSH_THEME=".*"/ZSH_THEME="darkblood"/' ~/.zshrc

# Install tmux
sudo apt install -y tmux

# Apply changes
source ~/.zshrc

echo "Installation and configuration complete!"
