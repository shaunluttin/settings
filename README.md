# settings 

* **VS Code** `Copy-Item vscode\settings.json $env:APPDATA\Code\User\`
* **Editor Config** Copy `.editorconfig` into the project root and install its extension (e.g. `ext install EditorConfig`).
* **Vim** 
  * `Copy-Item settings\vim\_vimrc ~\`
  * `New-Item -type directory ~\vimfiles\autoload, ~\vimfiles\bundle`
  * `Invoke-RestMethod -uri https://tpo.pe/pathogen.vim -OutFile ~\vimfiles\autoload\pathogen.vim`
* **Firefox** See https://support.mozilla.org/en-US/kb/back-and-restore-information-firefox-profiles

See also 

* Code Settings: `https://code.visualstudio.com/Docs/customization/userandworkspace`
* Code Settings Location: `https://code.visualstudio.com/Docs/customization/userandworkspace#_settings-file-locations`
* Editor Config Extension: `https://github.com/editorconfig/editorconfig-vscode` 
* vimrc file location: `https://stackoverflow.com/a/8977682/1108891` (i.e. run `:version` or `vim --version`) 

