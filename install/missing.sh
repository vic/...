TREEDOT=~/.fresh/source/vic/...

[ ! -d ~/.zprezto ] && source $TREEDOT/install/prezto.sh
env FRESH_RCFILE=/dev/stdin FRESH_LOCAL=~/.zprezto FRESH_NO_BIN_CHECK=true fresh <<-EOS
rm ~/.zshrc
fresh runcoms/zshrc --file=~/.zshrc
fresh vic/... zsh/prezto/zshrc --file=~/.zshrc
EOS

fresh vic/... vim/spf13/vimrc.local --file
fresh vic/... vim/spf13/vimrc.bundles.local --file

[ ! -d ~/.spf13-vim-3 ] && source $TREEDOT/install/spf13-vim.sh


