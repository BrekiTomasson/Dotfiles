#!/bin/bash

install tmux neovim python3 ag reattach-to-user-namespace
brew tap caskroom/cask
brew cask install iterm2

brew tap caskroom/fonts
brew cask install font-fira-code

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

chsh -s /bin/zsh

rm -rf ~/.vim ~/.vimrc ~/.zshrc ~/.tmux ~/.tmux.conf ~/.config/nvim 2> /dev/null

mkdir -p ~/.config ~/.config/nvim

ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/vimrc ~/.config/nvim/init.vim

alias vim="nvim"
