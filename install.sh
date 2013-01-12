#!/bin/bash -e
# vim: set ts=2 sw=2:

if [ ! -f ~/.fresh/source/freshshell/fresh/bin/fresh ]; then
  curl -sL get.freshshell.com | bash
  source ~/.fresh/build.new/shell.sh
  fresh vic/... config/freshrc --file
fi

fresh
