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

# Install utils
brew install git
brew install hub
brew install dockutil
brew install nmap
brew install whatmask
brew install watch
brew install wget
brew install curl
brew install awscli
brew install awsebcli
brew install fswatch
brew install mkcert
brew install nss
brew install peco
brew install jq
brew install fzf
brew install tmux

# GPG
brew install gnupg
brew install --cask gpg-suite

# Various software for daily use
brew install docker
brew install --cask iterm2
brew install --cask bartender
brew install --cask raycast
brew install --cask microsoft-edge
brew install --cask spotify
brew install --cask airtame
brew install --cask insomnia
brew install --cask sublime-text
brew install --cask visual-studio-code
brew install --cask jetbrains-toolbox
brew install --cask notion
brew install --cask tableplus
brew install --cask mongodb-compass
brew install --cask 1password
brew install --cask ferdi
brew install --cask signal

# Terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew install hashicorp/tap/packer

# Golang
brew install go
