set -g theme_hide_hostname no
set -g theme_display_user yes
# set -g fish_key_bindings fish_vi_key_bindings

set -gx CLICOLOR 1
set -gx TERM xterm-256color

eval (direnv hook fish)

# Custom bin files
if [ -d $HOME/.bin ]
    set -gx PATH $HOME/.bin $PATH
end

if [ -d $HOME/.binprivate ]
    set -gx PATH $HOME/.binprivate $PATH
end

## rbenv
#if [[ -d $HOME/.rbenv ]]; then
#    plugins+=(rbenv)
#fi

set -gx EDITOR nvim
alias sourcefish 'source $HOME/.config/fish/config.fish'
alias fedit ' $EDITOR $HOME/.config/fish/config.fish; sourcefish'
alias fledit ' $EDITOR $HOME/.config/fish/config.local.fish; sourcefish'

# Directories #
###############
#desk=~/Desktop
#docs=~/Documents
#down=~/Downloads
#pics=~/Pictures
#musc=~/Music
#vids=~/Videos
#
#df=~/.dotfiles
#dv=~/.vim
#
#sysd=/usr/lib/systemd/system

alias ls ' ls -1 --color'
set -gx LSCOLORS 'gxfxcxdxbxegedabagacad'
if [ (uname) = 'Darwin' ]
    alias ls ' ls -1GP'
    set -gx CLICOLORS 1
end

# ls on every cd
function cs
    cd $argv
    ls -1G
end

alias l ' ls'
alias ll ' ls -l'
alias la ' ls -A'
alias lla ' ls -lA'


# Shortcuts #
#############
alias c clear
alias :q exit
alias f 'find . -name'
alias p ' ps aux | grep'
alias g git
alias v vim
alias t 'tar -xvf'
alias d ' dirs -v'
alias ka killall
alias rscp 'rsync --rsh="ssh" --partial --progress --archive'

# moves file to trash
# assumes trash is located at ~/.Trash
function trash
    mv $1 ~/.Trash/.
end

[ -e $HOME/.config/fish/config.local.fish ]; and . $HOME/.config/fish/config.local.fish
