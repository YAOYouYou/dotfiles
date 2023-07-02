if [[ "$OSTYPE" == "darwin"* ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  :
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
  :
else
  echo "Unknown operating system"
fi

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(direnv hook zsh)"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export ZSH_DIR="$HOME/.zsh"
source "$ZSH_DIR/antigen.zsh"
source "$ZSH_DIR/env.zsh"
source "$ZSH_DIR/alias.zsh"
source "$ZSH_DIR/fzf.zsh"
source "$ZSH_DIR/custom.zsh"
