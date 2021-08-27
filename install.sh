#!/bin/bash

DISTRO_ID=$(cat /etc/os-release | grep ID_LIKE |  cut -d "=" -f 2)

[[ $(id -u) -ne 0 ]] && echo "This script must be run only root user" && exit


[[ DISTRO_ID -eq "arch" ]] && pacman -Syyu zsh tmux fzf neovim python python-pip nodejs npm prettier automake autoconf git && sync

[[ DISTRO_ID -eq "debian" ]] && apt update -y && apt install -y zsh tmux fzf neovim python3 python3-pip nodejs npm prettier automake autoconf git && sync

REP_PATH="$(pwd)"

cd ~

cp "$REP_PATH/.zshrc" ~/.zshrc
cp "$REP_PATH/.tmux.conf" ~/.tmux.conf
cp -rf "$REP_PATH/nvim" ~/.config/

# Installing zsh plugins
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#Installing Vim-Plug for NeoVim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#Preparing for NeoVim
python -m pip install neovim pynvim
npm install -g neovim 
nvim -c ":PlugInstall" -c ":CocInstall coc-tsserver" -c":CocInstall coc-python"

