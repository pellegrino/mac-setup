if which rbenv > /dev/null; then 
    eval "$(rbenv init -)" 
    export PATH="/usr/local/opt/ruby/bin:$PATH"
fi
