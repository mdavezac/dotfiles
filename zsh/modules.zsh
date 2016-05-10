export WORKSPACE=$HOME/workspaces
function nomorefun() {
  if ( [ -n "$CURRENT_FUN_WITH" ] ) ; then
    module unload $CURRENT_FUN_WITH
    unset CURRENT_FUN_WITH
  fi
}
function funwith() {
  if ( [ ! -e "$HOME/.lmodfiles/$1.lua" ] ) ; then
    if ( [ ! -e "$HOME/.funwith/$1.lua" ] ) ; then
      echo "No module named $1" 1>& 2
      return 1 ;
    fi
  fi
  if ( [ -n "$CURRENT_FUN_WITH" ] ) ; then
    nomorefun
  fi

  export CURRENT_FUN_WITH=$1
  module load $1

  if ( [ -e "$HOME/.tmuxinator/$CURRENT_FUN_WITH.yml" ] ) ; then
    tmuxinator start $CURRENT_FUN_WITH
    nomorefun
  elif ( [ -n "$CURRENT_FUN_WITH_DIR" ] ) ; then
    chdir $CURRENT_FUN_WITH_DIR
  fi

}
function cdproject() {
  if ( [ -n "$CURRENT_FUN_WITH_DIR" ] ) ; then
    chdir $CURRENT_FUN_WITH_DIR
  fi
}
