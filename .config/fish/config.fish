# setup

if [ -f $HOME/.private ]
  source $HOME/.private
end
$HOME/dotfiles/createLink.sh


# set env variables

set -x NODE_ENV development
set -x TERM xterm-256color
set -x GOPATH $HOME/Developer/go
set -x PATH $PATH /usr/local/bin:$GOPATH/bin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:/Applications/microchip/xc8/v1.43/bin:$HOME/.nimble/bin:/usr/local/Cellar/riscv-gnu-toolchain/gnu/bin:$HOME/.composer/vendor/bin
set -x SDKMAN_DIR $HOME/.sdkman
# [ -s ~/.sdkman/bin/sdkman-init.sh ] && source ~/.sdkman/bin/sdkman-init.sh


# set aliases

alias gcc='gcc'
alias gccpro='gcc -O2 -lm -std=gnu89 -Wall -Wvla -Wdeclaration-after-statement'
alias gccas='gcc -m32 -static -S -fno-asynchronous-unwind-tables'
alias gcco='gcc -c'
alias gpp='g++ -std=c++14 -O0 -g -fsanitize=undefined -fsanitize=address -Wall'
alias gpp11='g++ -std=c++11 -O0 -g -fsanitize=undefined -fsanitize=address -Wall'
alias gpprest='g++ -L/usr/local/opt/openssl/lib -I/usr/local/opt/openssl/include -lssl -lcrypto -lcpprest -lboost_system -lboost_thread-mt -lboost_chrono-mt -g'

alias diff='diff -u'

alias latexinit='cp $HOME/dotfiles/.latexmkrc .'
alias latexmkpvc='latexmk -pvc'

alias opendotfiles='open $HOME/dotfiles/ -a Visual\ Studio\ Code.app'
alias openiterm='open . -a iTerm'
alias opensourcetree='open . -a SourceTree'

alias transparent='convert -fuzz 50% -fill none -opaque'

alias mysql='mysql -uroot -p$MARIADB_PASSWORD'

alias docker-c='docker-compose'
