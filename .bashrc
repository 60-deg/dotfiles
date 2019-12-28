# env vars

export NODE_ENV=development
export TERM=xterm-256color
export PATH=$PATH:/usr/local/bin:~/Developer/go/bin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:/Applications/microchip/xc8/v1.43/bin:~/.nimble/bin:/usr/local/Cellar/riscv-gnu-toolchain/gnu/bin
export GOPATH=~/Developer/go
export SDKMAN_DIR=~/.sdkman
[ -s ~/.sdkman/bin/sdkman-init.sh ] && source ~/.sdkman/bin/sdkman-init.sh


# aliases

alias gcc='gcc'
alias gccpro='gcc -O2 -lm -std=gnu89 -Wall -Wvla -Wdeclaration-after-statement'
alias gccas='gcc -m32 -static -S -fno-asynchronous-unwind-tables'
alias gcco='gcc -c'
alias gpp='g++ -std=c++14 -O0 -g -fsanitize=undefined -fsanitize=address -Wall'
alias gpp11='g++ -std=c++11 -O0 -g -fsanitize=undefined -fsanitize=address -Wall'
alias gpprest='g++ -L/usr/local/opt/openssl/lib -I/usr/local/opt/openssl/include -lssl -lcrypto -lcpprest -lboost_system -lboost_thread-mt -lboost_chrono-mt -g'

if [ "$(uname)" == 'Darwin' ]; then
  # mac
  alias ls='ls -G -F'
else
  alias ls='ls --color=auto -F'
fi
alias diff='diff -u'

alias latexinit='cp ~/dotfiles/.latexmkrc .'
alias latexmkpvc='latexmk -pvc'

touchx() { touch $1; chmod +x $1
}

[ -e code ] || code() { open $1 -a Visual\ Studio\ Code.app
}
alias opendotfiles='open ~/dotfiles/ -a Visual\ Studio\ Code.app'
alias openiterm='open . -a iTerm'
alias opensourcetree='open . -a SourceTree'

alias gocwi='gocwi -a $STUDENTNUMBER -p $OCWIPASS -m $OCWIMATRIX -d ~/Dropbox/講義資料'

alias transparent='convert -fuzz 50% -fill none -opaque'

alias mysql='mysql -uroot -p$MARIADB_PASSWORD'

# generate password
passgen() {
  PASSLEN=8
  if [ $# -ge 1 ]; then
    PASSLEN=$1
  fi
  pwgen -Bs $PASSLEN 1 | pbcopy;
  echo 'password copied to clipboard'
}

# シンボリックリンクのオリジナルに移動
cdorig() { cd `readlink $1`
}

# .gitignore を生成
creategitignore() {
  URL='https://www.gitignore.io/api/'
  for i in $*
  do
    URL="${URL}${i},"
  done
  URL=${URL%,} # 最後の","を削除
  curl $URL -o .gitignore
}


# プロンプト表示

# Gitのブランチ名を表示
if [ ! -e ~/dotfiles/.git-prompt.sh ]; then
  wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -P ~/dotfiles/ -O .git-prompt.sh
fi
source ~/dotfiles/.git-prompt.sh
# Gitブランチの状況を*+%で表示
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
# 出力の後に改行を入れる
function add_line {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
PROMPT_COMMAND='add_line'

WINDOWTITLE='\[\e]0;\w\007\]' # ターミナルのタイトルにパスを表示
DIRECTORY='\[\e[1;34m\]\W\[\e[0m\]'
GITBRANCH='\[\e[36m\] $(__git_ps1 "(%s)")'
export PS1=$WINDOWTITLE$DIRECTORY$GITBRANCH'\[\e[37m\]$ \[\e[0m\]'
