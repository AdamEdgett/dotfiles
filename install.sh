#! /bin/bash
# Oh-My-Zsh
read -p "Do you want to install Oh-My-Zsh? [Y/n] " -n 1
echo ""
if [[ $REPLY  =~ ^[Yy]?$ ]]
then
    git clone --quiet  https://github.com/robbyrussell/oh-my-zsh.git ~/.zsh
fi

# Pathogen
read -p "Do you want to install vim-pathogen? [Y/n] " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]?$ ]]
then
    mkdir -p ~/.vim/autoload ~/.vim/bundle
    curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
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
    ln -s $PWD/vim/vimrc ~/.vimrc
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
