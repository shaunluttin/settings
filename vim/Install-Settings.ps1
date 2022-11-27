# Ensure ~/.vim exists
New-Item -Type Directory ~/.vim -Force | Out-Null;
$vimDir = Resolve-Path ~/.vim;

# Install settings
Copy-Item $PSScriptRoot\_vimrc ~\_vimrc;

Write-Host "Installing bundles to $vimDir";

function Install-Pack ($source, $destination) {
    Write-Host "";
    Write-Host "Cloning $source";
    Write-Host "  into $destination";
    $result = git clone $source $destination 2>&1;
    if($result -match 'already exists') {
        git -C $destination pull;
    }
}

# Install packages.
$packages = @(
    "https://github.com/prettier/vim-prettier.git",
    "https://github.com/pangloss/vim-javascript.git",
    "https://github.com/leafgarland/typescript-vim.git",
    "https://github.com/PProvost/vim-ps1.git",
    "https://github.com/chrisbra/csv.vim.git",
    "https://github.com/joshdick/onedark.vim.git",
    "https://github.com/morhetz/gruvbox.git"
);

$packages | ForEach-Object {
    $source = $_;
    $segments = ([uri]$source).Segments;
    $organizationName = $segments[1];
    $repositoryName = $segments[2];
    $destination = "$vimDir/pack/$organizationName/start/$repositoryName";

    Install-Pack $source $destination
};
