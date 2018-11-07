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

vimrc file location: `https://stackoverflow.com/a/8977682/1108891` (i.e. run `:version` or `vim --version`) 
    
## ConEmu

* ConEmu > Settings > Import
* TODO: Figure out how to use these from `C:\Program Files\ConEmu\ConEmu.xml`.   
    
## Firefox

See https://support.mozilla.org/en-US/kb/back-and-restore-information-firefox-profiles

## Git

TODO
