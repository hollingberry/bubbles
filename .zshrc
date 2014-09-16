# Setup oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="calliope"
plugins=(brew bundler cabal gem gitfast)
source $ZSH/oh-my-zsh.sh

# Enable line comments
setopt interactivecomments

# Safe rm (move to .Trash)
alias rm='trash'

# Github CLI (github.com/github/hub)
alias git='hub'

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
  open "/Applications/Xcode6-Beta.app/Contents/Developer/Applications/iOS Simulator.app"
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
