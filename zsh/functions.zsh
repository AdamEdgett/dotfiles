# Custom functions

# ls on every cd
function chpwd() {
    emulate -L zsh
    ls -1G
}

# moves file to trash
# assumes trash is located at ~/.Trash
function trash() {
    mv $1 ~/.Trash/.
}


# @author     Sebastian Tramp <mail@sebastian.tramp.name>
# @license    http://opensource.org/licenses/gpl-license.php
#
# functions and key bindings to that functions
#

# Top ten memory hogs
# http://www.commandlinefu.com/commands/view/7139/top-ten-memory-hogs
memtop() {ps -eorss,args | sort -nr | pr -TW$COLUMNS | head}
zle -N memtop

# Escape potential tarbombs
# http://www.commandlinefu.com/commands/view/6824/escape-potential-tarbombs
etb() {
        l=$(tar tf $1);
        if [ $(echo "$l" | wc -l) -eq $(echo "$l" | grep $(echo "$l" | head -n1) | wc -l) ];
        then tar xf $1;
        else mkdir ${1%.t(ar.gz||ar.bz2||gz||bz||ar)} && tar xvf $1 -C ${1%.t(ar.gz||ar.bz2||gz||bz||ar)};
        fi ;
}

# show newest files
# http://www.commandlinefu.com/commands/view/9015/find-the-most-recently-changed-files-recursively
newest () {find . -type f -printf '%TY-%Tm-%Td %TT %p\n' | grep -v cache | grep -v ".hg" | grep -v ".git" | sort -r | less }

# http://www.commandlinefu.com/commands/view/7294/backup-a-file-with-a-date-time-stamp
buf () {
    oldname=$1;
    if [ "$oldname" != "" ]; then
        datepart=$(date +%Y-%m-%d);
        firstpart=`echo $oldname | cut -d "." -f 1`;
        newname=`echo $oldname | sed s/$firstpart/$firstpart.$datepart/`;
        cp -R ${oldname} ${newname};
    fi
}

# activates zmv
autoload zmv
# noglob so you don't need to quote the arguments of zmv
# mmv *.JPG *.jpg
alias mmv='noglob zmv -W'

# Rename files in a directory in an edited list fashion
# http://www.commandlinefu.com/commands/view/7818/
function massmove () {
    ls > ls; paste ls ls > ren; vi ren; sed 's/^/mv /' ren|bash; rm ren ls
}


# Put a console clock in top right corner
# http://www.commandlinefu.com/commands/view/7916/
function clock () {
    while sleep 1;
    do
        tput sc
        tput cup 0 $(($(tput cols)-29))
        date
        tput rc
    done &
}

# create a new script, automatically populating the shebang line, editing the
# script, and making it executable.
# http://www.commandlinefu.com/commands/view/8050/
shebang() {
    if i=$(which $1);
    then
        printf '#!/usr/bin/env %s\n\n' $1 > $2 && chmod 755 $2 && vim + $2 && chmod 755 $2;
    else
        echo "'which' could not find $1, is it in your \$PATH?";
    fi;
    # in case the new script is in path, this throw out the command hash table and
    # start over  (man zshbuiltins)
    rehash
}
