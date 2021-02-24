#!/bin/bash

# Reset
rm ~/.vimrc
rm ~/.vim -rf

# Install Settings
cp ./_vimrc ~/.vimrc

# Install Bundles
git clone https://github.com/prettier/vim-prettier ~/.vim/pack/plugins/start/vim-prettier
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/pack/vim-javascript/start/vim-javascript
git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/pack/typescript/start/typescript-vim

# TODO Refactor to avoid mkdir and cd. Does it support bundles?
mkdir -p ~/.vim/pack/coc/start
cd ~/.vim/pack/coc/start
curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz | tar xzfv -

