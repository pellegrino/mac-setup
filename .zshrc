bindkey -e 
fath=($fpath ~/.zsh/completion)

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
