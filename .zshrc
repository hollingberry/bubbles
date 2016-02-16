# Setup oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="calliope"
plugins=(brew bundler cabal gem gitfast)
source $ZSH/oh-my-zsh.sh

# Vim line navigation
bindkey -v
bindkey -M viins 'jj' vi-cmd-mode
bindkey "^?" backward-delete-char

# ala less
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Search history matching entered text
bindkey '\eOA' history-beginning-search-backward
bindkey '\e[A' history-beginning-search-backward
bindkey '\eOB' history-beginning-search-forward
bindkey '\e[B' history-beginning-search-forward

# Enable line comments
setopt interactivecomments

# Enable autocompletion for fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# OPAM configuration
. /Users/oreiss/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# watch out sydney
source $HOME/.alias
