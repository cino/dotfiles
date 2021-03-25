##
# Paths
##

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

export PATH=$HOME/Library/Python/3.8/bin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin":$PATH
export PATH="/usr/local/opt/mysql@5.7/bin":$PATH

##
# ZSH
##

export ZSH=$HOME/.oh-my-zsh

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

# Doesn't exist by default, only used for settings that should not be on Github.
source ~/Config/private

# Set LC_ALL
export LC_ALL=en_US.UTF-8

##
# Node Version Manager
##

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
