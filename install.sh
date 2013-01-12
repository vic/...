#!/bin/bash -e
# vim: set ts=2 sw=2:

FRESH_REPO="${1:-vic/...}"
FRESH_RC="${2:-config/freshrc}"

cd

if [ ! -f ~/.freshrc ]; then
  curl -sL get.freshshell.com | bash
  source ~/.fresh/build/shell.sh
  git clone git://github.com/$FRESH_REPO.git ~/.fresh/source/$FRESH_REPO
  ln -sf ~/.fresh/source/$FRESH_REPO/$FRESH_RC ~/.freshrc
fi

fresh
