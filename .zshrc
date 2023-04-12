# Path to your oh-my-zsh installation.
export ZSH="/Users/luciaquirke/.oh-my-zsh"

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
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# Aliases
alias zsh_reload='source ~/.zshrc'
alias kill_node='killall -KILL node'

# Configure pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Python aliases
alias mkvenv="python3 -m venv env"
alias entervenv="source env/bin/activate"
alias pyarn="pip install -r requirements.txt # install all requirements"
alias pyfreeze="pip freeze > requirements.txt # save all requirements"
alias pyinit="mkvenv && env >> .gitignore"
