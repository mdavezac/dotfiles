if $CURRENT_FUN_WITH_HOMEDIR != ""
  let filename = expand("$CURRENT_FUN_WITH_HOMEDIR/.vimrc.before")
  if filereadable(filename)
    exe 'source '.filename
  endif
endif
