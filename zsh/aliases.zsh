export EDITOR="vim"
alias zedit=" $EDITOR ~/.zshrc; source ~/.zshrc"
alias aedit=" $EDITOR ~/.zsh/custom/aliases.zsh; source ~/.zshrc"
alias fedit=" $EDITOR ~/.zsh/custom/functions.zsh; source ~/.zshrc"
alias pedit=" $EDITOR ~/.zsh/custom/private.zsh; source ~/.zshrc"
alias vedit=" $EDITOR ~/.vimrc"
alias gedit=" $EDITOR ~/.gitconfig"

# Directories #
###############
desk=~/Desktop
docs=~/Documents
down=~/Downloads
pics=~/Pictures
musc=~/Music
vids=~/Videos

sysd=/usr/lib/systemd/system

# Shortcuts #
#############
alias c="clear"
alias :q="exit"

##### standard aliases (start with a space to be ignored in history)
alias ls=" ls -1 --color"
export LSCOLORS="gxfxcxdxbxegedabagacad"
if [[ "$(uname)" = "Darwin" ]] then
    alias ls=" ls -1GP"
    export CLICOLORS=1
fi

alias l=" ls"
alias ll=" ls -l"
alias la=" ls -A"
alias lla=" ls -lA"

alias p=" ps aux | grep"
alias g="git"
alias v="vim"
alias t="tar -xvf"
alias d=" dirs -v"
alias ka="killall"
alias mv="mv -i"
alias rscp="rsync --rsh='ssh' --partial --progress --archive"

alias ..=" cd .."
alias ...=" cd ..; cd .."
alias ....=" cd ..; cd ..; cd .."
alias cd..=".."
alias cd...="..."
alias cd....="...."
