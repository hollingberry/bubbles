# Add bin/ folders to $PATH
export PATH=$PATH:$HOME/dev/bin
export PATH=$PATH:$HOME/.rbenv/bin
export PATH=$PATH:$HOME/.cabal/bin
export PATH=$PATH:/usr/local/heroku/bin
export PATH=$PATH:/usr/local/opt/php55/bin

# Load Homebrew executables
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# Set editor to vim
export EDITOR=vim

# Setup nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Setup rbenv
eval "$(rbenv init -)"

# Setup github.com/supercrabtree/k (alternative to ls)
source /Users/oreiss/.oh-my-zsh/custom/k.sh

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Miscellaneous environment variables
export WOLFRAM_APPID='VVQRHR-VH5Q2UPK7H'
export HOMEBREW_GITHUB_API_TOKEN='805b92f0a11d7d07d282d326b245dcea40cd4cbc'
export SAUCE_USERNAME="hollingberry"
export SAUCE_ACCESS_KEY="928e5957-a8a2-4141-9cd6-92be10cfd14e"
export SAFARI_USER_AGENT="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) \
  AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14"
