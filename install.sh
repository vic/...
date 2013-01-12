#!/bin/bash -e
# vim: set ts=2 sw=2:

FRESH_REPO="${1:-vic/...}"
FRESH_RC="${2:-config/freshrc}"
FRESH_GIT="${3:-git://github.com/$FRESH_REPO.git}"

cd

if [ ! -f ~/.freshrc ]; then
  curl -sL get.freshshell.com | bash
  source ~/.fresh/build/shell.sh
  git clone $FRESH_GIT ~/.fresh/source/$FRESH_REPO
  ln -sf ~/.fresh/source/$FRESH_REPO/$FRESH_RC ~/.freshrc
fi

fresh

[ -f ~/.fresh/source/$FRESH_REPO/install/missing.sh ] &&
  FRESH_RCFILE=~/.fresh/source/$FRESH_REPO/install/missing.sh \
  FRESH_NO_BIN_CHECK=true fresh
