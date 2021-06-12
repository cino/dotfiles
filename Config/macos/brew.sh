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
brew tap homebrew/cask

brew install dockutil
brew install nmap
brew install whatmask
brew install gnupg
brew install --cask gpg-suite
brew install watch
brew install wget

brew install awsebcli
brew install fswatch
brew install mkcert
brew install nss
brew install peco
brew install jq

# Terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew install hashicorp/tap/packer
