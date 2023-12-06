# zsh-vi-mode
ZVM_VI_EDITOR=nvim

source $HOME/antigen.zsh
    
# Load the oh-my-zsh's library
antigen use oh-my-zsh
antigen bundle command-not-found

antigen bundle jeffreytse/zsh-vi-mode
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zdharma-continuum/fast-syntax-highlighting
# antigen bundle zsh-users/zsh-syntax-highlighting

# Tell antigen that you're done
antigen apply
