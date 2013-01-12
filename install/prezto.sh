#!/bin/bash -e

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

zsh <<-'SRC'
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
SRC

rm ~/.zpreztorc

case $OSTYPE in
  darwin*)
    chsh -s $(which zsh)
    echo sudo chmod ugo-x /usr/libexec/path_helper
    sudo chmod ugo-x /usr/libexec/path_helper
    ;;
esac
