export PATH=$HOME/bin:/usr/local/bin:vendor/bin:$PATH
export PATH=$PATH":$HOME/.composer/vendor/bin"
export ZSH=$HOME/.oh-my-zsh

##
# ZSH
##

ZSH_THEME="cino"
DEFAULT_USER="ricardocino"

plugins=(
    git 
    laravel5 
    osx
)

##
# Sources
##

source $ZSH/oh-my-zsh.sh
source ~/Config/aliases
source ~/Config/servers

##
# Node Version Manager
##

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

