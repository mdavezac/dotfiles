export DEFAULT_USER=$(whoami)
export CFLAGS="-Wall"
export CXXFLAGS="$CFLAGS"
export EDITOR=vim
export VISUAL=gvim
export CLICOLOR=1
export HISTFILE=~/.zhistory
export HISTSIZE=100000
export SAVEHIST=100000

setopt SHARE_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
