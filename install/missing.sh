TREEDOT=~/.fresh/source/vic/...

[ ! -d ~/.zprezto ] && source $TREEDOT/install/prezto.sh
FRESH_OLD=$FRESH_LOCAL
FRESH_LOCAL=~/.zprezto
rm ~/.zshrc
fresh runcoms/zshrc --file=~/.zshrc
fresh vic/... zsh/prezto/zshrc --file=~/.zshrc
FRESH_LOCAL=$FRESH_OLD



fresh vic/... vim/spf13/vimrc.local --file
fresh vic/... vim/spf13/vimrc.bundles.local --file
[ ! -d ~/.spf13-vim-3 ] && source $TREEDOT/install/spf13-vim.sh
