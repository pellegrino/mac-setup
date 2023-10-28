bindkey -e 
fath=($fpath ~/.zsh/completion)
export LANG=en_US.UTF-8

autoload -Uz compinit
compinit

if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

source "$HOME/.config/zsh/zshrc"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source "$HOME/.cargo/env"

export PATH="/usr/local/opt/ruby/bin:$PATH"

export PIPENV_VENV_IN_PROJECT=1 
source /Users/vitor/.config/op/plugins.sh

# bun completions
[ -s "/Users/vitor/.bun/_bun" ] && source "/Users/vitor/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
