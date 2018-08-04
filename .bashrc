
export PATH="$PATH:/Applications/microchip/xc8/v1.43/bin"

#export CPATH=$CPATH:/usr/local/include
#export LIBRARY_PATH='$LIBRARY_PATH:/usr/local/lib'

export myTEXMF=/usr/local/texlive/texmf-local
export myTEXSUBDIR=tex/platex

export NODE_ENV=development

export TERM=xterm-256color

alias gcc='gcc-7 -O2 -lm -std=gnu89 -Wall -Wvla -Wdeclaration-after-statement'
alias gpp='g++ -std=c++14 -O0 -g -fsanitize=undefined -fsanitize=address -Wall'
alias gpp11='g++ -std=c++11 -O0 -g -fsanitize=undefined -fsanitize=address -Wall'
alias gpprest='g++ -L/usr/local/opt/openssl/lib -I/usr/local/opt/openssl/include -lssl -lcrypto -lcpprest -lboost_system -lboost_thread-mt -lboost_chrono-mt -g'


alias ls='ls -G'
alias diff='diff -u'

alias touchcpp='cp ~/.templates/cpp.txt'
alias touchc='cp ~/.templates/c.txt'
alias touchtex='cp ~/.templates/tex.txt'

alias openvscode='open . -a Visual\ Studio\ Code.app'
alias openiterm='open . -a iTerm'
alias opensourcetree='open . -a SourceTree'

alias gocwi='gocwi -a $STUDENTNUMBER -p $OCWIPASS -m $OCWIMATRIX -d /Users/hatsumi/Dropbox/gocwi'

alias mysql='mysql -uroot -p$MARIADB_PASSWORD'

[ -f /etc/.inputrc ] && bind -f /etc/.inputrc
[ -f ~/.inputrc ] && bind -f ~/.inputrc
