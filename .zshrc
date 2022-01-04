bindkey -e 
fath=($fpath ~/.zsh/completion)

autoload -Uz compinit
compinit

source "$HOME/.config/zsh/zshrc"

fortune
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
