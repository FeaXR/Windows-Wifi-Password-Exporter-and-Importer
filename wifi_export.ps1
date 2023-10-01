# powershell -ExecutionPolicy ByPass -File .\export.ps1

param(
    [switch]$UseCurrentLocation
)

if ($UseCurrentLocation) {
    $XmlDirectory = Get-Location    # If you want to run it at the folder you are currently in
} else {
    $XmlDirectory = $PSScriptRoot   # If you want to run it at the folder the script is saved in
}


$CurrentDate = Get-Date -Format "yyyy-MM-dd"
$FolderName = "$CurrentDate wifi psw"
$FolderPath = Join-Path -Path $XmlDirectory -ChildPath $FolderName
New-Item -ItemType Directory -Path $FolderPath

Netsh wlan export profile key=clear folder=$FolderPath