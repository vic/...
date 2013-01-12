#!/bin/bash -e
# vim: set ts=2 sw=2:

TREEDOT=vic/...

if [ ! -f ~/.fresh/source/freshshell/fresh/bin/fresh ]; then
  echo > ~/.freshrc 
  curl -sL get.freshshell.com | bash
  curl -sL https://raw.github.com/$TREEDOT/master/startfresh  >> ~/.freshrc
fi

source ~/.fresh/build/shell.sh
fresh
