
# Install Settings
Copy-Item $PSScriptRoot\_vimrc ~\_vimrc

$path = Resolve-Path ~/

Write-Host "Installing bundles to $path";

# Install Bundles
git clone https://github.com/prettier/vim-prettier $path/.vim/pack/plugins/start/vim-prettier
git clone https://github.com/pangloss/vim-javascript.git $path/.vim/pack/vim-javascript/start/vim-javascript
git clone https://github.com/leafgarland/typescript-vim.git $path/.vim/pack/typescript/start/typescript-vim
git clone https://github.com/PProvost/vim-ps1.git $path/.vim/pack/vim-ps1/start/vim-ps1

# TODO Install preferred colour scheme.
# TODO Install a completion bundle like CoC or YouCompleteMe.
