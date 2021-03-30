
# Install Settings
Copy-Item $PSScriptRoot\_vimrc ~\_vimrc

# Install Bundles
git clone https://github.com/prettier/vim-prettier ~/.vim/pack/plugins/start/vim-prettier
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/pack/vim-javascript/start/vim-javascript
git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/pack/typescript/start/typescript-vim

# TODO Install preferred colour scheme.
# TODO Install a completion bundle like CoC or YouCompleteMe.
