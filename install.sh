#!/bin/bash -e
# vim: set ts=2 sw=2:

FRESH_REPO="${1:-vic/...}"
FRESH_RC="${2:-fresh/main}"
FRESH_GIT="${3:-git://github.com/$FRESH_REPO.git}"

cd

if [ ! -f ~/.freshrc ]; then
  curl -sL get.freshshell.com | bash
  source ~/.fresh/build/shell.sh
  git clone $FRESH_GIT ~/.fresh/source/$FRESH_REPO
  rm -f ~/.freshrc
  ln -s ~/.fresh/source/$FRESH_REPO/$FRESH_RC ~/.freshrc
fi

fresh
