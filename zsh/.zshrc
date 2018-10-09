export CLICOLOR=1
export TERM=xterm-256color

eval "$(direnv hook zsh)"

# Custom bin files
if [[ -d $HOME/.bin ]]; then
    path+=($HOME/.bin)
fi
if [[ -d $HOME/.binprivate ]]; then
    path+=($HOME/.binprivate)
fi

# rbenv
if [[ -d $HOME/.rbenv ]]; then
    #eval "$(rbenv init -)"
    #plugins+=(rbenv)
fi

if [[ -d $HOME/.pyenv ]]; then
    eval "$(pyenv init -)"
fi

# Include any local changes
if [[ -a ${ZDOTDIR:-$HOME}/.zshrc.local ]]; then
    source ${ZDOTDIR:-$HOME}/.zshrc.local
fi

if [[ -s ${ZDOTDIR:-$HOME}/.zprezto/init.zsh ]]; then
    source ${ZDOTDIR:-$HOME}/.zprezto/init.zsh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR="nvim"
alias sourcezsh="source $ZDOTDIR/.zshrc"
alias zedit=" $EDITOR ~/.zshrc; sourcezsh"
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

df=~/.dotfiles
dv=~/.vim

sysd=/usr/lib/systemd/system

alias ls=" ls -1 --color"
export LSCOLORS="gxfxcxdxbxegedabagacad"
if [[ "$(uname)" = "Darwin" ]] then
    alias ls=" ls -1GP"
    export CLICOLORS=1
fi

# ls on every cd
function chpwd() {
    emulate -L zsh
    ls -1G
}

alias l=" ls"
alias ll=" ls -l"
alias la=" ls -A"
alias lla=" ls -lA"

#
# Shortcuts #
#############
alias c="clear"
alias :q="exit"
alias f='find . -name'
alias p=" ps aux | grep"
alias g="git"
alias v="vim"
alias t="tar -xvf"
alias d=" dirs -v"
alias ka="killall"
alias mv="mv -i"
alias rscp="rsync --rsh='ssh' --partial --progress --archive"

# moves file to trash
# assumes trash is located at ~/.Trash
function trash() {
    mv $1 ~/.Trash/.
}
