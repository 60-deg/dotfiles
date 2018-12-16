export NODE_ENV=development

export TERM=xterm-256color

export PS1='\u:\W$ '

alias gcc='gcc'
alias gccpro='gcc -O2 -lm -std=gnu89 -Wall -Wvla -Wdeclaration-after-statement'
alias gccas='gcc -m32 -static -S -fno-asynchronous-unwind-tables'
alias gcco='gcc -c'
alias gpp='g++ -std=c++14 -O0 -g -fsanitize=undefined -fsanitize=address -Wall'
alias gpp11='g++ -std=c++11 -O0 -g -fsanitize=undefined -fsanitize=address -Wall'
alias gpprest='g++ -L/usr/local/opt/openssl/lib -I/usr/local/opt/openssl/include -lssl -lcrypto -lcpprest -lboost_system -lboost_thread-mt -lboost_chrono-mt -g'

alias python='python3'

alias ls='ls -G'
alias diff='diff -u'

alias touchcpp='cp ~/.templates/cpp.txt'
alias touchc='cp ~/.templates/c.txt'
alias touchtex='cp ~/.templates/tex.txt'
alias touchsh='cp ~/.templates/sh.txt'
alias touchvue='cp ~/.templates/Vue.txt'

alias openvscode='open . -a Visual\ Studio\ Code.app'
alias opendotfiles='open ~/dotfiles/ -a Visual\ Studio\ Code.app'
alias openiterm='open . -a iTerm'
alias opensourcetree='open . -a SourceTree'

alias gocwi='gocwi -a $STUDENTNUMBER -p $OCWIPASS -m $OCWIMATRIX -d ~/Dropbox/講義資料'

alias transparent='convert -fuzz 50% -fill none -opaque'

alias mysql='mysql -uroot -p$MARIADB_PASSWORD'

passgen() { pwgen -Bs $1 1 | pbcopy; pbpaste; 
}

export SDKMAN_DIR="~/.sdkman"
[ -s "~/.sdkman/bin/sdkman-init.sh" ] && source "~/.sdkman/bin/sdkman-init.sh"

[ -f /etc/.inputrc ] && bind -f /etc/.inputrc
[ -f ~/.inputrc ] && bind -f ~/.inputrc

./createLink.sh
