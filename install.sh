#!/bin/bash -e
# vim: set ts=2 sw=2:

FRESH_REPO=vic/...
FRESH_RC=config/freshrc

if [ ! -f ~/.freshrc ]; then
  curl -sL get.freshshell.com | bash
  source ~/.fresh/build/shell.sh
  echo "fresh $FRESH_REPO $FRESH_RC --file=~/.fresh/start" >> ~/.freshrc
  fresh install --quiet
  ln -sf ~/.fresh/source/$FRESH_REPO/$FRESH_RC ~/.freshrc
fi

fresh
