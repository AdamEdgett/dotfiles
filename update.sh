#! /bin/bash
# Self
read -p "Do you want to update this project? [Y/n] " -n 1
echo ""
if [[ $REPLY  =~ ^[Yy]?$ ]]; then
    cd ~/.dotfiles
    if git pull
    then
        echo "Updated this project"
    fi
fi

# Oh-My-Zsh
read -p "Do you want to update Oh-My-Zsh? [Y/n] " -n 1
echo ""
if [[ $REPLY  =~ ^[Yy]?$ ]]; then
    cd ~/.zsh
    if git pull
    then
        echo "Updated Oh-My-Zsh"
    fi
fi

# Vim-Plug
read -p "Do you want to update vim plugins? [Y/n] " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]?$ ]]; then
    if $EDITOR +PlugUpdate +qall
    then
        echo "Updated vim plugins"
    fi
fi

# TPM
read -p "Do you want to update tmux plugins? [Y/n] " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]?$ ]]; then
    if ~/.tmux/plugins/tpm/scripts/update_plugin.sh
    then
        echo "Updated tmux plugins"
    fi
fi
