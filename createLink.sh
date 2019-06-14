#!/bin/sh
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.bashrc_local ~/.bashrc_local
ln -sf ~/dotfiles/.config ~/.config
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/.inputrc ~/.inputrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc

[ -d ~/.templates ] || mkdir ~/.templates
ln -sf ~/dotfiles/templates/ ~/.templates/
rm ~/dotfiles/templates/templates

# vscode setting files
[ -f ~/Library/Application\ Support/Code/User/settings.json ] && ln -sf ~/dotfiles/.config/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
[ -f ~/Library/Application\ Support/Code/User/keybindings.json ] && ln -sf ~/dotfiles/.config/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
[ -f ~/Library/Application\ Support/Code/User/snippets ] && ln -sf ~/dotfiles/.config/vscode/snippets ~/Library/Application\ Support/Code/User/snippets