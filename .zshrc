eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

export ZSH_DIR="$HOME/.zsh"
source "$ZSH_DIR/antigen.zsh"
source "$ZSH_DIR/env.zsh"
source "$ZSH_DIR/alias.zsh"
source "$ZSH_DIR/fzf.zsh"
