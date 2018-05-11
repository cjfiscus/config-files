#!/bin/bash 

## NEW MAC SETUP

## install dev tools
xcode-select --install

## install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## drink brews
brew install zsh
brew install neovim
brew install wget
brew install git
brew install python3
brew install R
brew install tmux
brew cask install iterm2

## finish setup for neovim
echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc" > ~/.config/nvim/init.vim

## fix shell 
chsh -s /bin/zsh

## install prezto ## 
zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

## install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim




