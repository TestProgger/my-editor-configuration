# My Configs od Editors [ vim , lite ]



## VIM

#### Install Vim-Plug
```bash
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

#### Run PlugInstall in Vim
```bash
	:PlugInstall
```
## NEOVIM

#### Move the nvim folder to the ~/.config directory
#### Install Nerd-Fonts


#### Install Vim-Plug
```bash
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

```

#### Install Prettier
```bash
    sudo apt install prettier   #Ubuntu/Debian
    sudo pacman -S prettier     #Arch
```

#### Install Dep's
```bash
    python -m pip install neovim pynvim
    npm install -g neovim
```

#### Run PlugInstall in NeoVim
```
    :PlugInstall
```
