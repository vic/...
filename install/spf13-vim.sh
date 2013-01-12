#!/bin/bash -e

fresh vic/... vim/spf13/vimrc.local --file
fresh vic/... vim/spf13/vimrc.bundles.local --file
curl -sL http://j.mp/spf13-vim3 | bash

