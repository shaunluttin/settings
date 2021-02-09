
# TODO Factor these functions into their own files in the /Scripts directory. 

Write-Output "Loading Shaun Luttin's Profile"

function prompt {
  $currentDir = Split-Path -leaf -path (Get-Location)
    "$currentDir> "
}

$FILE_STORAGE_ROOT = 'C:/dev/shaunluttin/happiness/';

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
