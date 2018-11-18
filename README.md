# settings 

## PowerShell

    Copy-Item settings\PowerShell\* $Home\Documents\WindowsPowerShell -recurse [-force]

https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles

## VS Code

    Copy-Item settings\vscode\settings.json $env:APPDATA\Code\User\

Code Settings: `https://code.visualstudio.com/Docs/customization/userandworkspace`
Code Settings Location: `https://code.visualstudio.com/Docs/customization/userandworkspace#_settings-file-locations`

## Editor Config

Copy `.editorconfig` into the project root and install its extension (e.g. `ext install EditorConfig`).

Editor Config Extension: `https://github.com/editorconfig/editorconfig-vscode` 

## Vim

    Copy-Item settings\vim\_vimrc ~\
    New-Item -type directory ~\vimfiles\autoload, ~\vimfiles\bundle
    Invoke-RestMethod -uri https://tpo.pe/pathogen.vim -OutFile ~\vimfiles\autoload\pathogen.vim

git support requires vim to run in a bash context, https://stackoverflow.com/a/53357279/1108891. So, create a duplicate of `vimfiles`. 

   Copy-Item ~\vimfiles\ ~\.vim -Recurse 

vimrc file location: `https://stackoverflow.com/a/8977682/1108891` (i.e. run `:version` or `vim --version`) 

    :e $MYVIMRC
    :scriptnames
    
## Git

TODO
