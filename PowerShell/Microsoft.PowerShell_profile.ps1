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

function Prepend-Content {
    param([string]$Content, [string]$Path, [Switch]$Open) 

    # The following machinery lets us *prepend* an item effeciently to a file.
    $tempFile = "$FILE_STORAGE_ROOT/temp.txt";

    $line | Set-Content $tempFile;

    if(Test-Path $Path) {
      Get-Content $Path | Add-Content $tempFile;
      Remove-Item $Path;
    }

    Rename-Item $tempFile $Path;

    if($Open) 
    {
      vim $Path;    
    } else 
    {
      Write-Output $Path;
      Write-Output $line;
    }
}

function Add-Distraction {
    param([string]$Description, [Switch]$Open) 

    # Text to add
    $moment = Get-Date -format "MMM yyyy";
    $line = "* [ ] ($moment) $Description";

    Prepend-Content `
        -Content $line `
        -Path "$FILE_STORAGE_ROOT/distractions.md" `
        -Open:$Open
}

function Start-Pompo {
    param([string]$Description, [Switch]$Open)

    # Text to add
    $moment = Get-Date -format "MMM yyyy @ hh:mm";
    $line = "Start: ($moment) $Description";

    Prepend-Content `
      -Content $line `
      -Path "$FILE_STORAGE_ROOT/pompos.md" `
      -Open:$Open
}

function Stop-Pompo {
    param([Switch]$Open)

    $lastPompo = Get-Content -Path "$FILE_STORAGE_ROOT/pompos.md" -TotalCount 1;

    $now = Get-Date; 
    $timestamp = $now.ToString("MMM yyyy @ hh:mm");

    $duration;
    if($lastPompo -match "\(.*\)") {
        $lastTimestamp = [datetime]::ParseExact($matches[0], "(MMM yyyy @ hh:mm)", $null);
        $duration = $now - $lastTimestamp;
    }

    $line = "Stop: ($timestamp) $duration";

    Prepend-Content `
      -Content $line `
      -Path "$FILE_STORAGE_ROOT/pompos.md" `
      -Open:$Open
}

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Import-MvModulesAndScripts;
Import-Module Posh-Git;
