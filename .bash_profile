~/dotfiles/createLink.sh

[ -f ~/.private ] && source ~/.private
[ -f ~/.bashrc ] && source ~/.bashrc
[ -f ~/.profile ] && source ~/.profile
[ -f ~/.bashrc_local ] && source ~/.bashrc_local
[ -s ~/.nvm/nvm.sh ] && source ~/.nvm/nvm.sh

[ -f /etc/.inputrc ] && bind -f /etc/.inputrc
[ -f ~/.inputrc ] && bind -f ~/.inputrc

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
