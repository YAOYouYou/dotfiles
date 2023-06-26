. "$HOME/.cargo/env"

if [[ "$OSTYPE" == "darwin"* ]]; then
  export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
  export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
  export HOMEBREW_NO_INSTALL_CLEANUP=TRUE
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  :
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
  :
else
  :
fi

# proxy
if [[ -n "$WSL_DISTRO_NAME" ]]; then
  host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
  export https_proxy=http://$host_ip:7890 http_proxy=http://$host_ip:7890 all_proxy=socks5://$host_ip:7890
else
  export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
fi

# export BAT_THEME="Solarized (dark)"
export BAT_THEME="OneHalfDark"

# joshuto
export EDITOR="nvim"
export ZVIM_INIT_MODE="sourcing"

export FZF_DEFAULT_OPTS='--height 50% --layout=reverse'
# export FZF_DEFAULT_COMMAND='fd --type f'
