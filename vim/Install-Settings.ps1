
# Ensure ~/.vim exists
New-Item -Type Directory ~/.vim -Force;
$vimDir = Resolve-Path ~/.vim;

# Install settings
Copy-Item $PSScriptRoot\_vimrc ~\_vimrc;

Write-Host "Installing bundles to $vimDir";

function Update-Pack ($source, $destination) {
    Write-Host "Updating $source";
    $result = git clone $source $destination 2>&1;
    if($result -match 'already exists') {
        git -C $destination pull;
    }
}

# Install bundles
Update-Pack https://github.com/prettier/vim-prettier $vimDir/pack/vim-prettier/start/vim-prettier
Update-Pack https://github.com/pangloss/vim-javascript.git $vimDir/pack/vim-javascript/start/vim-javascript
Update-Pack https://github.com/leafgarland/typescript-vim.git $vimDir/pack/typescript-vim/start/typescript-vim
Update-Pack https://github.com/PProvost/vim-ps1.git $vimDir/pack/vim-ps1/start/vim-ps1
Update-Pack https://github.com/chrisbra/csv.vim.git $vimDir/pack/csv-vim/start/csv-vim

