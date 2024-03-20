#!/bin/sh

sudo apt update
sudo apt install zsh
chsh -s $(which zsh)
sudo apt install links
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt install fonts-powerline
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc


cp ~/start/.zshrc ~/
cp ~/start/p10k-lean.zsh ~/powerlevel10k/config/
cp ~/start/.p10k.zsh ~/

sudo apt install fonts-ibm-plex
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo "set number" >> ~/.vim_runtime/my_configs.vim

source .zshrc

