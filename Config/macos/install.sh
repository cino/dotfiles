#!/bin/bash

################################################################################
# Set up                                                                       #
################################################################################

# Clone the dotfiles into a bare repository
git clone --bare https://github.com/cino/dotfiles.git ~/.dotfiles

# Define the alias in the current shell scope
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Checkout the content from the bare repository
dotfiles checkout

# Set the `showUntrackedFiles` flag for this clone
dotfiles config --local status.showUntrackedFiles no


################################################################################
# Install                                                                      #
################################################################################

# General
sudo softwareupdate -i -a
xcode-select --install

# Specific

# Install applications by brew.
source brew.sh

# Setup MacOS defaults.
source macos.sh