param(
    [switch]$UseCurrentLocation,
    [string]$Path = $null
)

if ($UseCurrentLocation) {
    $XmlDirectory = Get-Location    # If you want to run it at the folder you are currently in
} else {
    $XmlDirectory = $PSScriptRoot   # If you want to run it at the folder the script is saved in
}

if ($Path -ne $null) {
    $XmlDirectory = $Path  # Use the specified path if provided
}

Get-ChildItem $XmlDirectory | Where-Object {$_.extension -eq ".xml"} | ForEach-Object {netsh wlan add profile filename=("$XmlDirectory\$($_.name)")}
