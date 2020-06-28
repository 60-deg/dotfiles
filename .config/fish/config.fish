# setup

if [ -f ~/.private ]
  source ~/.private
end
~/dotfiles/createLink.sh


# set env variables

set -x NODE_ENV development
set -x TERM xterm-256color
set -x PATH $PATH /usr/local/bin:~/Developer/go/bin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:/Applications/microchip/xc8/v1.43/bin:~/.nimble/bin:/usr/local/Cellar/riscv-gnu-toolchain/gnu/bin:~/.composer/vendor/bin
set -x GOPATH ~/Developer/go
set -x SDKMAN_DIR ~/.sdkman
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

alias latexinit='cp ~/dotfiles/.latexmkrc .'
alias latexmkpvc='latexmk -pvc'

alias opendotfiles='open ~/dotfiles/ -a Visual\ Studio\ Code.app'
alias openiterm='open . -a iTerm'
alias opensourcetree='open . -a SourceTree'

alias gocwi='gocwi -a $STUDENTNUMBER -p $OCWIPASS -m $OCWIMATRIX -d ~/Dropbox/講義資料'

alias transparent='convert -fuzz 50% -fill none -opaque'

alias mysql='mysql -uroot -p$MARIADB_PASSWORD'
