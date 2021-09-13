
# Install Settings
Copy-Item $PSScriptRoot\_vimrc ~\_vimrc

$vimDir = Resolve-Path ~/.vim

Write-Host "Installing bundles to $vimDir";

# Install Bundles
git clone https://github.com/prettier/vim-prettier $vimDir/pack/plugins/start/vim-prettier
git clone https://github.com/pangloss/vim-javascript.git $vimDir/pack/vim-javascript/start/vim-javascript
git clone https://github.com/leafgarland/typescript-vim.git $vimDir/pack/typescript/start/typescript-vim
git clone https://github.com/PProvost/vim-ps1.git $vimDir/pack/vim-ps1/start/vim-ps1
git clone https://github.com/chrisbra/csv.vim.git $vimDir/pack/csv-vim/start/csv-vim

