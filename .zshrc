# anitgen
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
# . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
# else
. "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
# fi
# fi
unset __conda_setup
# <<< conda initialize <<<



eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source "$HOME/.zsh/plugin.zsh"
source "$HOME/.zsh/env.zsh"
source "$HOME/.zsh/alias.zsh"
