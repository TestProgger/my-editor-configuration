## Nerd Fonts 

#### I use [JetbrainsMonoMedium](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip)

#### You can find the [NerdFont](https://www.nerdfonts.com/font-downloads) that suits you


## AUTO INSTALLATION
```bash
    chmod +x ./install.sh
    sudo ./install.sh
```

## MANUAL INSTALLATION

### ZSH
#### Move .zshrc into your $HOME dir
```bash
    cp -f .zshrc ~/.zshrc
```

#### Install [Oh-My-Zsh](https://ohmyz.sh/)

#### Install additional plugins
```bash
    
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

```

#### Install fzf & tmux
```bash
    sudo apt install -y fzf tmux  # Ubuntu/Debian
    sufor pacman -S fzf tmux      # ArchLinux
```

### TMUX 
#### Move .tmux.conf into your $HOME dir
```bash
    cp -f .tmux.conf ~/.tmux.conf
```


### NEOVIM

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
