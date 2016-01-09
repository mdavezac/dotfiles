[[ -e /opt/boxen/homebrew/Cellar/lmod/5.9.3/init/zsh ]] && \
  source /opt/boxen/homebrew/Cellar/lmod/5.9.3/init/zsh
[[ -e /usr/local/Cellar/lmod/5.9.3/init/zsh ]] && \
  source /usr/local/Cellar/lmod/5.9.3/init/zsh
module use $HOME/.lmodfiles
