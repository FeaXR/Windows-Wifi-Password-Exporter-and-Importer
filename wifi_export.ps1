param(
    [switch]$UseCurrentLocation,
    [string]$Path
)

if ($UseCurrentLocation) {
    $XmlDirectory = Get-Location    # If you want to run it at the folder you are currently in
} elseif ([string]::IsNullOrWhiteSpace($Path)) {
    $XmlDirectory = $PSScriptRoot   # If you want to run it at the folder the script is saved in
} else {
    $XmlDirectory = $Path  # Use the specified path if provided
}

$CurrentDate = Get-Date -Format "yyyy-MM-dd"
$FolderName = "$CurrentDate wifi psw"
$FolderPath = Join-Path -Path $XmlDirectory -ChildPath $FolderName
New-Item -ItemType Directory -Path $FolderPath

Netsh wlan export profile key=clear folder=$FolderPath