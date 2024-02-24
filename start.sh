#!/bin/sh

sudo apt install zsh
sudo apt install links
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt install fonts-powerline
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

rm -fr ~/.zshrc
cp ~/start/.zshrc ~/
rm -fr ~/powerlevel10k/config/p10k-lean.zsh
cp ~/start/p10k-lean.zsh ~/powerlevel10k/config/
rm -fr ~/.p10k.zsh
cp ~/start/.p10k.zsh ~/

sudo apt install nodejs npm
npm install @ibm/plex
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
#touch ~/.vim_runtime/my_configs.vim
echo "set number" >> ~/.vim_runtime/my_configs.vim

