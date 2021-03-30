# VsCode

Copy-Item $PSScriptRoot\settings.json "$env:APPDATA\Code\User\"
Copy-Item $PSScriptRoot\keybindings.json "$env:APPDATA\Code\User\"

$addMe = "C:\Program Files\Microsoft VS Code\bin"
[Environment]::SetEnvironmentVariable("PATH", $env:Path + ";" + $addMe, [System.EnvironmentVariableTarget]::Machine);
[Environment]::SetEnvironmentVariable("PATH", $env:Path + ";" + $addMe, [System.EnvironmentVariableTarget]::User);
[Environment]::SetEnvironmentVariable("PATH", $env:Path + ";" + $addMe, [System.EnvironmentVariableTarget]::Process);

code --install-extension ms-dotnettools.csharp
code --install-extension vscodevim.vim
code --install-extension esbenp.prettier-vscode

