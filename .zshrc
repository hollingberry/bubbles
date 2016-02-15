# Setup oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="calliope"
plugins=(brew bundler cabal gem gitfast)
source $ZSH/oh-my-zsh.sh

# Vim line navigation
bindkey -v
bindkey -M viins 'jj' vi-cmd-mode
bindkey "^?" backward-delete-char

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

# Quick clear
alias cls=clear

# Better ls defaults
alias ls='ls --color=auto --group-directories-first'
alias l='ls -lh --almost-all | tail --lines=+2'

# Safe rm (move to .Trash)
alias rm=trash

# Github CLI (github.com/github/hub)
alias git=hub

# On a QWERTY keyboard, "quit" is faster to type than "exit"
alias quit=exit

# Vim-style quit
alias :q=exit

# Miscellaneous git shortcuts
alias gf='git fuzzy'
alias gfa='git fuzzy add'
alias gbr='git browse'
alias glg='git log --stat'

# Shortcuts for using a cabal sandbox
SANDBOX_OPTS="-no-user-package-db -package-db .cabal-sandbox/*-packages.conf.d"
alias ghc-sandbox="ghc $SANDBOX_OPTS"
alias ghci-sandbox="ghci $SANDBOX_OPTS"
alias runhaskell-sandbox="runhaskell $SANDBOX_OPTS"

# AirPort
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'

# Homebrew Cask
alias cask='brew cask'

# Make aliases available with sudo
# See http://askubuntu.com/questions/22037.
alias sudo='sudo '

# Try using NeoVim
alias vi='nvim'
alias vim='nvim'
