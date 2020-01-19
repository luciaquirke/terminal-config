# Path to your oh-my-zsh installation.
export ZSH="/Users/luciaquirke/.oh-my-zsh"

# Superseded by a Hyper theme
ZSH_THEME=""

# Comment the following line to disable command auto-correction.
ENABLE_CORRECTION="true"

plugins=(
    git
    npm
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Add pure prompt
autoload -U promptinit; promptinit
prompt pure
