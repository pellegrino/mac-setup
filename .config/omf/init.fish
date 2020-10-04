# Fish configuration file. Exported through oh-my-fish

### Variables
# Golang developers might need this one
set -xg GOPATH $HOME
set -xg GPG_TTY (tty) 
### Path extensions

set -x PATH $PATH $HOME/bin \
	# $ANDROID_SDK_HOME/cmdline-tools/tools \
	#$ANDROID_SDK_HOME/cmdline-tools/tools/bin \
	#$ANDROID_SDK_HOME/emulator \
	#$ANDROID_SDK_HOME/platform-tools \
	#$ANDROID_SDK_HOME/tools/bin \
	$HOME/.jenv/bin \
	$HOME/tools/adr-tools/src \
	$GOPATH/bin \
	$HOME/.cargo/bin \
	$HOME/.local/bin 
### Init scripts
eval (direnv hook fish)

fish_vi_key_bindings

starship init fish | source
jenv init - fish | source
