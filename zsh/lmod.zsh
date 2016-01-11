. $(dirname $(dirname $(which luarocks)))/Cellar/lmod/5.9.3/init/zsh
if [[ -e "~/.lmodfiles" ]] ; then
  module use $HOME/.lmodfiles
else
  module use $HOME/.funwith
fi
