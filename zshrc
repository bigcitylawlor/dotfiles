. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# virtualenv
[[ -s /usr/local/bin/virtualenvwrapper.sh ]] && export WORKON_HOME=$HOME/.virtualenvs && export PIP_VIRTUALENV_BASE=$WORKON_HOME && export PIP_RESPECT_VIRTUALENV=true && source /usr/local/bin/virtualenvwrapper.sh

# rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# node.js
export NODE_PATH=/usr/local/lib/node:$NODE_PATH

# Use .localrc for system-specific settings
[[ -f ~/.localrc ]] && .  ~/.localrc
