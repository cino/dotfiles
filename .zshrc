##
# Paths
##

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

export PATH=$HOME/Library/Python/3.8/bin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/bin:$PATH

##
# ZSH
##
export ZSH=$HOME/.oh-my-zsh

##
# Sources
#
source ~/Config/aliases
source ~/Config/servers

ZSH_THEME="cino"
DEFAULT_USER="ricardocino"

export ENHANCD_FILTER="/opt/homebrew/bin/peco:fzf:non-existing-filter"

plugins=(
    aws
    autojump
    git
    laravel5
    k
    osx
    vscode
    zsh-syntax-highlighting
    zsh-completions
)

source $ZSH/oh-my-zsh.sh
source $ZSH/custom/plugins/enhancd/init.sh

# Doesn't exist by default, only used for settings that should not be on Github.
source ~/Config/private

# Fix GPG
export GPG_TTY=$(tty)

# Set LC_ALL
export LC_ALL=en_US.UTF-8

autoload -U compinit && compinit

export PATH="$HOME/.bin:$PATH"

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh

source /opt/homebrew/opt/chruby/share/chruby/auto.sh

chruby ruby-2.7.2

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
