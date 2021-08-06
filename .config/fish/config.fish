# setup

if [ -f $HOME/.private ]
  source $HOME/.private
end
$HOME/dotfiles/createLink.sh


# set env variables

set -x TERM xterm-256color
set -x PATH $PATH /usr/local/bin ~/Developer/go/bin ~/.composer/vendor/bin (yarn global bin)

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

alias transparent='convert -fuzz 50% -fill none -opaque'

alias mysql-root='mysql -uroot -p$MARIADB_PASSWORD'

alias docker-c='docker-compose'
