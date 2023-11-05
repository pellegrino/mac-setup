bindkey -e 
fath=($fpath ~/.zsh/completion)
export LANG=en_US.UTF-8

autoload -Uz compinit
compinit

export PIPENV_VENV_IN_PROJECT=1 

source "$HOME/.config/zsh/zshrc"

eval "$(atuin init zsh)"

bindkey '^r' _atuin_search_widget
# depends on terminal mode
bindkey '^[[A' _atuin_search_widget
bindkey '^[OA' _atuin_search_widget
