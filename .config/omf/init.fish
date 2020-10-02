# Fish configuration file. Exported through oh-my-fish

### Variables
# Golang developers might need this one
set -xg GOPATH $HOME

set -xg GPG_TTY (tty) 

set -xg ANDROID_SDK_HOME /opt/android-sdk
set -xg ANDROID_HOME  $ANDROID_SDK_HOME

### Path extensions

set -U fish_user_paths $HOME/bin $fish_user_paths
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths
set -U fish_user_paths $HOME/.local/bin $fish_user_paths
set -U fish_user_paths /usr/local/bin $fish_user_paths
set -U fish_user_paths $GOPATH/bin $fish_user_paths
set -U fish_user_paths $HOME/tools/flutter/bin
set -U fish_user_paths $HOME/tools/adr-tools/src $fish_user_paths
set -U fish_user_paths $ANDROID_SDK_HOME/cmdline-tools/tools/bin $fish_user_paths
set -U fish_user_paths $ANDROID_SDK_HOME/emulator $fish_user_paths
set -U fish_user_paths $ANDROID_SDK_HOME/platform-tools $fish_user_paths
set -U fish_user_paths $ANDROID_SDK_HOME/tools/bin $fish_user_paths
set -U fish_user_paths $HOME/.jenv/bin $fish_user_paths
set -U fish_user_paths $ANDROID_SDK_HOME/cmdline-tools/tools $fish_user_paths
set -U fish_user_paths $ANDROID_SDK_HOME/cmdline-tools/tools/bin $fish_user_paths
set -U fish_user_paths $ANDROID_SDK_HOME/emulator $fish_user_paths
set -U fish_user_paths $ANDROID_SDK_HOME/platform-tools $fish_user_paths
set -U fish_user_paths $ANDROID_SDK_HOME/tools/bin $fish_user_paths


### Init scripts

fortune 
eval (direnv hook fish)


fish_vi_key_bindings

starship init fish | source
jenv init - fish | source
