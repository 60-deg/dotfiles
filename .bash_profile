[ -f ~/.private ] && source ~/.private
[ -f ~/.bashrc ] && source ~/.bashrc
[ -f ~/.profile ] && source ~/.profile
[ -f ~/.bashrc_local ] && source ~/.bashrc_local
[ -f ~/.bash_profile_local ] && source ~/.bash_profile_local
[ -s ~/.nvm/nvm.sh ] && source ~/.nvm/nvm.sh

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

