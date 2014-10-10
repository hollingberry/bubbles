# Setup oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="calliope"
plugins=(brew bundler cabal gem gitfast)
source $ZSH/oh-my-zsh.sh

# Vim line navigation
bindkey -v
bindkey -M viins 'jj' vi-cmd-mode

# Search history matching entered text
bindkey '\eOA' history-beginning-search-backward
bindkey '\e[A' history-beginning-search-backward
bindkey '\eOB' history-beginning-search-forward
bindkey '\e[B' history-beginning-search-forward

# Fuzzy tab completion
zstyle ':completion:*' matcher-list 'r:[[:ascii:]]||[[:ascii:]]=** r:|=* m:{a-z\-}={A-Z\_}'

# Enable line comments
setopt interactivecomments

# Safe rm (move to .Trash)
alias rm='trash'

# Github CLI (github.com/github/hub)
alias git='hub'

# On a QWERTY keyboard, "quit" is faster to type than "exit"
alias quit='exit'

# Vim-style quit
alias :q='exit'

# Mathematica console
alias math='/Applications/Mathematica.app/Contents/MacOS/MathKernel'

# Remove formatting
function rmf {
  pbpaste | pbcopy
}

# Show hidden files in Finder
function showall {
  defaults write com.apple.finder AppleShowAllFiles YES
}

# Hide hidden files in Finder
function hideall {
  defaults write com.apple.finder AppleShowAllFiles NO
}

# Clear the terminal (using command+k)
function clear {
  osascript -e 'tell application "System Events" to keystroke "k" using command down'
}

# Launch the iOS Simulator
function emulator {
  open "/Applications/Xcode.app/Contents/Developer/Applications/iOS Simulator.app"
}

# Serve the working directory at localhost:8000
function ss {
  python -m SimpleHTTPServer
}

# Display local, private, and public IP addresses
function whereami {
  ifconfig \
  | grep "inet " \
  | cut -d\  -f2 \
  && curl -s checkip.dyndns.org|sed -e "s/.*Current IP Address: //" -e "s/<.*$//"
}
