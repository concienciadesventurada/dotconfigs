# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/zsh/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  zoxide
)

source $ZSH/oh-my-zsh.sh

# Example aliases
alias zrc="nvim ~/.zshrc"
alias zenv="sudo nvim /etc/zsh/zshenv"
alias dfs="nvim ~/dotconfigs/."
