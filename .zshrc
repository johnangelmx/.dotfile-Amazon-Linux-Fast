export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-completions)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

alias cls="clear"
alias tree="exa --icons --tree -L 1 -I node_modules"
alias ls="exa --icons"
alias dir="exa --icons -lh"
alias grep="grep --color"
alias cat="bat"
alias diff="icdiff"
