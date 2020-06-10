#!/bin/bash

# Reset
rm ~/.vimrc
rm ~/.vim -rf

# Install Settings
cp ./_vimrc ~/.vimrc

# Install Bundles
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/pack/vim-javascript/start/vim-javascript
git clone https://github.com/prettier/vim-prettier ~/.vim/pack/plugins/start/vim-prettier
