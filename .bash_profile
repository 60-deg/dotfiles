if [[ -s ~/.nvm/nvm.sh ]];
	then source ~/.nvm/nvm.sh
fi

[ -f ~/.private ] && source ~/.private
[ -f ~/.bashrc ] && source ~/.bashrc
[ -f ~/.profile ] && source ~/.profile
