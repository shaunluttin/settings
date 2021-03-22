# Code
Copy-Item settings.json "$env:APPDATA\Code\User\"
Copy-Item keybindings.json "$env:APPDATA\Code\User\"

code --install-extension ms-dotnettools.csharp
code --install-extension vscodevim.vim
code --install-extension esbenp.prettier-vscode


# Code Insiders
# Copy-Item settings.json "$env:APPDATA\Code - Insiders\User\"
# Copy-Item keybindings.json "$env:APPDATA\Code - Insiders\User\"

