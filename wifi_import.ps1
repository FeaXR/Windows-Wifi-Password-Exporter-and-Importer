# $XmlDirectory = Get-Location     # If you want to run it at the folder you are currently in
$XmlDirectory = $PSScriptRoot      # If you want to run it at the folder the script is saved in
Get-ChildItem $XmlDirectory | Where-Object {$_.extension -eq ".xml"} | ForEach-Object {netsh wlan add profile filename=("$XmlDirectory\$($_.name)")}
