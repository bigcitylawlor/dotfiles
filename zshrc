. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# Load rvm (http://rvm.beginrescueend.com/) if it's available
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

# Use .localrc for system-specific settings
[[ -f ~/.localrc ]] && .  ~/.localrc
