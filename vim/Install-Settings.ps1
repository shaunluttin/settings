
# Ensure ~/.vim exists
New-Item -Type Directory ~/.vim -Force;
$vimDir = Resolve-Path ~/.vim;

# Install settings
Copy-Item $PSScriptRoot\_vimrc ~\_vimrc;

Write-Host "Installing bundles to $vimDir";

# Install bundles
git clone https://github.com/neoclide/coc.nvim.git $vimDir/pack/coc/start/coc
git clone https://github.com/prettier/vim-prettier $vimDir/pack/vim-prettier/start/vim-prettier
git clone https://github.com/pangloss/vim-javascript.git $vimDir/pack/vim-javascript/start/vim-javascript
git clone https://github.com/leafgarland/typescript-vim.git $vimDir/pack/typescript-vim/start/typescript-vim
git clone https://github.com/PProvost/vim-ps1.git $vimDir/pack/vim-ps1/start/vim-ps1
git clone https://github.com/chrisbra/csv.vim.git $vimDir/pack/csv-vim/start/csv-vim

