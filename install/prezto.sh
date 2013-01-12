#!/bin/bash -e

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

zsh <<-'SRC'
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
SRC

env FRESH_RCFILE=/dev/stdin FRESH_LOCAL=~/.zprezto/ FRESH_NO_BIN_CHECK=true fresh <<-EOS
rm ~/.zpreztorc
fresh runcoms/zpreztorc
fresh vic/... zsh/prezto/zpreztorc
EOS 

case $OSTYPE in 
  darwin*)
    chsh -s $(which zsh)
    echo sudo chmod ugo-x /usr/libexec/path_helper
    sudo chmod ugo-x /usr/libexec/path_helper
    ;;
esac
