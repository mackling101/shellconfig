#!/bin/bash

# Update apt sources and upgrade
sudo apt update -y

# Install tmux, zsh, kubectl
sudo apt install -y tmux, zsh 

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# create .tmux.conf and source files (if utilizing your own repo update the curl refs)
curl https://raw.githubusercontent.com/mackling101/shellconfig/refs/heads/main/tmux/.tmux.conf -O -L
curl https://raw.githubusercontent.com/mackling101/shellconfig/refs/heads/main/tmux/.file.conf -O -L
# overwrite .zshrc with file
curl https://raw.githubusercontent.com/mackling101/shellconfig/refs/heads/main/.zshrc -O -L
#Install complete
echo "Installation and configuration complete!"

chsh -s /bin/zsh $USER

exec zsh