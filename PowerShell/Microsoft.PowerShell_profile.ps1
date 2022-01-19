# TODO: Factor these functions into their own files in the /Scripts directory. 
# That will require about 20-minutes of research on how to do that.
# What is the canonical approach for organizing large Powershell modules?
# When to use .psm1 extension? 
# When to use .ps1 extension?

Write-Output "Loading Shaun Luttin's Profile"

# https://ss64.com/ps/syntax-functions.html

$FILE_STORAGE_ROOT = 'C:/dev/shaunluttin/happiness/';

function prompt {
  $currentDir = Split-Path -leaf -path (Get-Location)
  "$currentDir$ "
}

function Import-MvModulesAndScripts {
  C:\dev\mediaValet\MediaValet.Learning\entropy\DamShell\Import-MvDamShell.ps1
}

function Convert-MarkdownToOdt {
    param([string]$absoluteFilePath)

    if(-not (Test-Path $absoluteFilePath)) {
        Write-Output "$($absoluteFilePath) does not exist."
        return
    }

    $destination = [io.path]::ChangeExtension($absoluteFilePath, "odt")

    pandoc $absoluteFilePath -f markdown -t odt -o $destination
}

function Add-Distraction {
    param([string]$Description, [Switch]$Open) 

    # text to add
    $monthYear = Get-Date -format "MMM yyyy";
    $line = "* [ ] ($monthYear) $Description";

    # The following machinery lets us *prepend* an item effeciently to a file.
    $destination = "$FILE_STORAGE_ROOT/distractions.md";
    $tempFile = "$FILE_STORAGE_ROOT/addDistraction.txt";

    $line | Set-Content $tempFile;

    if(Test-Path $destination) {
      Get-Content $destination | Add-Content $tempFile;
      Remove-Item $destination;
    }

    Rename-Item $tempFile $destination;

    if($Open) {
      vim $destination;    
    }

    Write-Output $destination;
    Write-Output $line;
}

function Add-Memo {
    param([string]$title)

    Write-Output $title
}

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Import-MvModulesAndScripts;
Import-Module Posh-Git;
