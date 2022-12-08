# Extending new path entries
#
export PATH="/usr/local/opt/grep/libexec/gnubin:$HOME/bin:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/.rbenv/bin:$(python3 -c 'import site; print(site.USER_BASE)')/bin:$PATH"
export GOPATH=$HOME

eval "$(direnv hook zsh)"
fpath=($fpath ~/.zsh/completion)
