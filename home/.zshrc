path+=/home/sjq/Downloads/flutter/bin
path+=$HOME/.local/bin
export ZSH="$HOME/.oh-my-zsh"
export XDG_CONFIG_HOME=$HOME/.config


plugins=(archlinux direnv thefuck cp zsh-autosuggestions zsh-fzf-history-search)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

alias ls=exa
alias ll=ls -la
alias ys=yay -S --needed
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
