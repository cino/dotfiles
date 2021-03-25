#!/bin/sh

###
# Make sure brew is installed
###

echo "Installing brew..."

if test ! $(which brew)
then
	## Don't prompt for confirmation when installing homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
fi

# Latest brew, install brew cask
brew upgrade
brew update
brew tap homebrew/cask-cask

brew install dockutil
brew install nmap
brew install whatmask
brew install watch
brew install wget

brew install awsebcli
brew install fswatch
brew install mkcert
brew install nss
