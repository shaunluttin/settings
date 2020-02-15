
export VISUAL=vim
export EDITOR=$VISUAL

bind TAB:menu-complete

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PS1="\n\W\$ "

# Prevent Ctrl+s from freezing keyboard input
# See https://stackoverflow.com/a/791800/1108891
# See also https://unix.stackexchange.com/a/12108/235774
stty -ixon
