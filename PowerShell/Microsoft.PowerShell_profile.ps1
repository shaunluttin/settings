
Write-Output "Loading Shaun Luttin's Profile"

# https://ss64.com/ps/syntax-functions.html

$FILE_STORAGE_ROOT = 'C:/dev/shaunluttin/happiness/';

function Add-Distraction {
    # slug is work/life
    param([string]$description, [string]$slug) 

    # text to add
    $monthYear = Get-Date -format "MMM yyyy";
    $line = "* [ ] ($monthYear) $description";

    # prepend line to file
    $destination = "$FILE_STORAGE_ROOT/distractions.md";
    $tempFile = "$FILE_STORAGE_ROOT/addDistraction.txt";

    $line | Set-Content $tempFile;

    if(Test-Path $destination) {
      Get-Content $destination | Add-Content $tempFile;
      Remove-Item $destination;
    }

    Rename-Item $tempFile $destination;
}

function Add-Memo {
    param([string]$title)

    Write-Output $title
}
