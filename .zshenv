# Add bin/ folders to $PATH
export PATH=$HOME/.bin:$PATH
export PATH=$HOME/dev/bin:$PATH
export PATH=$HOME/.cabal/bin:$PATH
export PATH=/usr/local/heroku/bin:$PATH
export PATH=/usr/local/opt/php55/bin:$PATH
export PATH=/usr/local/opt/go/libexec/bin:$PATH
export PATH=/usr/local/Cellar/netpbm/10.68/bin:$PATH

# Load Homebrew executables
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# Override native coreutils with GNU coreutils
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

# Setup $GOPATH
export GOPATH=$HOME/dev/go
export PATH=$GOPATH/bin:$PATH
export PATH=`go env GOROOT`:$PATH

# Set editor to nvim
export EDITOR=nvim

# Setup nvm
export NVM_DIR=~/.nvm
source /usr/local/opt/nvm/nvm.sh

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Disable emoji in Homebrew
export HOMEBREW_NO_EMOJI=1

# Miscellaneous environment variables
export WOLFRAM_APPID='VVQRHR-VH5Q2UPK7H'
export HOMEBREW_GITHUB_API_TOKEN='d671063832e4a6be7aff0489e1cb1f86df3756ee'
export SAUCE_USERNAME="hollingberry"
export SAUCE_ACCESS_KEY="928e5957-a8a2-4141-9cd6-92be10cfd14e"
export SAFARI_USER_AGENT="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) \
  AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/537.75.14"
