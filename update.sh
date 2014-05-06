#! /bin/bash
# Self
read -p "Do you want to update this project? [Y/n] " -n 1
echo ""
if [[ $REPLY  =~ ^[Yy]?$ ]]
then
    cd ~/.dotfiles
    if git pull
    then
        echo "Updated this project"
    fi
fi

# Oh-My-Zsh
read -p "Do you want to update Oh-My-Zsh? [Y/n] " -n 1
echo ""
if [[ $REPLY  =~ ^[Yy]?$ ]]
then
    cd ~/.zsh
    if git pull
    then
        echo "Updated Oh-My-Zsh"
    fi
fi

# Vundle
read -p "Do you want to update vim plugins? [Y/n] " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]?$ ]]
then
    if vim +PluginUpdate +qall
    then
        echo "Updated vim plugins"
    fi
fi
