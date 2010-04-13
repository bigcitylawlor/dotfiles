. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# Load rvm (http://rvm.beginrescueend.com/) if it's available
if [[ -s /Users/matt/.rvm/scripts/rvm ]] ; then source /Users/matt/.rvm/scripts/rvm ; fi

# Use .localrc for system-specific settings
[[ -f ~/.localrc ]] && .  ~/.localrc
