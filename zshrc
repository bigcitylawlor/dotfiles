. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# Load rvm if it's available
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Use .localrc for system-specific settings
[[ -f ~/.localrc ]] && .  ~/.localrc
