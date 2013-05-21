export EDITOR="vim"
alias aedit=" $EDITOR ~/.zsh/custom/aliases.zsh; source ~/.zshrc"
alias fedit=" $EDITOR ~/.zsh/custom/functions.zsh; source ~/.zshrc"
alias pedit=" $EDITOR ~/.zsh/custom/private.zsh; source ~/.zshrc"
alias vedit=" $EDITOR ~/.vimrc"
alias gedit=" $EDITOR ~/.gitconfig"
alias finder="open ."

# Shortcuts #
#############
alias c='clear'
alias :q='exit'

##### standard aliases (start with a space to be ignored in history)
alias ls=' ls -1 --color'
export LSCOLORS="gxfxcxdxbxegedabagacad"

alias l=" ls"
alias ll=' ls -l'
alias la=' ls -A'
alias lla=' ls -lA'
alias v=" clear; ll -g"    # standard directory view
alias vs=" v **/*(.)"         # show all files in all subdirs plain in a list

alias p=' ps aux | grep'
alias g='git'
alias t='tar -xvf'
alias d=' dirs -v'
alias ka="killall"

alias ..=' cd ..'
alias ...=' cd ..; cd ..'
alias ....=' cd ..; cd ..; cd ..'
alias cd..='..'
alias cd...='...'
alias cd....='....'
