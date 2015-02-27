#! /bin/bash
# Oh-My-Zsh
read -p "Do you want to install Oh-My-Zsh? [Y/n] " -n 1
echo ""
if [[ $REPLY  =~ ^[Yy]?$ ]]
then
    git clone --quiet  https://github.com/robbyrussell/oh-my-zsh.git ~/.zsh
fi

# Zsh
read -p "Do you want to setup config files for zsh? [Y/n] " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]?$ ]]
then
    ln -s $PWD/zsh/zshrc ~/.zshrc
    ln -s $PWD/zsh/aliases.zsh ~/.zsh/custom/aliases.zsh
    ln -s $PWD/zsh/custom.zsh-theme ~/.zsh/custom/custom.zsh-theme
    ln -s $PWD/zsh/functions.zsh ~/.zsh/custom/functions.zsh
fi

# Bin
read -p "Do you want to setup custom bin directory? [Y/n] " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]?$ ]]
then
    ln -s $PWD/bin ~/.bin
fi

# Git
read -p "Do you want to setup config files for git? [Y/n] " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]?$ ]]
then
    ln -s $PWD/git/gitconfig ~/.gitconfig
    ln -s $PWD/git/gitignore ~/.gitignore
fi

# Vim
read -p "Do you want to setup config files for vim? [Y/n] " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]?$ ]]
then
    mkdir -p ~/.vim
    ln -s $PWD/vim/vimrc ~/.vimrc
    ln -s $PWD/vim/ftplugin ~/.vim/ftplugin
fi

# Vundle
read -p "Do you want to install vundle and vim plugins? [Y/n] " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]?$ ]]
then
    mkdir -p ~/.vim/plugged
    git clone --quiet https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug
    vim +PlugInstall +qall
    mkdir -p ~/.vim/colors
    ln -s ~/.vim/plugged/vim-colorschemes/colors ~/.vim/colors/vim-colorschemes
    ln -s ~/.vim/plugged/vim-colors-solarized/colors ~/.vim/colors/vim-colors-solarized
fi

# Editorconfig
read -p "Do you want to setup the editorconfig file? [Y/n] " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]?$ ]]
then
    ln -s $PWD/editorconfig ~/.editorconfig
fi

# Xmonad
read -p "Do you want to setup config files for xmonad? [Y/n] " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]?$ ]]
then
    ln -s $PWD/xmonad/xinitrc ~/.xinitrc
    ln -s $PWD/xmonad/xmonad.hs ~/.xmonad/xmonad.hs
    ln -s $PWD/xmonad/xmobarrc ~/.xmobarrc
fi
