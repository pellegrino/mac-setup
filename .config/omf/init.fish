# Fish configuration file. Exported through oh-my-fish

### Variables
set -xg GOPATH $HOME
set -xg GPG_TTY (tty) 
set -xg FLUTTER_PATH /usr/local/Caskroom/flutter/1.22.1/flutter
set -xg ASDF_DIR $HOME/.asdf
set -xg ASDF_DEFAULT_TOOL_VERSIONS_FILENAME ~/.config/asdf/tool-versions
set -xg PROTO_DIR $ASDF_DIR/installs/protoc/3.13.0/include

### Path extensions

set -x PATH $PATH $HOME/bin \
	$HOME/tools/adr-tools/src \
	$HOME/.cargo/bin \
	$HOME/.local/bin \
	$FLUTTER_PATH/.pub-cache/bin
### Init scripts
starship init fish | source

source /usr/local/opt/asdf/asdf.fish

eval (direnv hook fish)

eval (doctl completion fish)

