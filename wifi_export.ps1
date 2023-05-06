# powershell -ExecutionPolicy ByPass -File .\export.ps1
# $XmlDirectory = Get-Location     # If you want to run it at the folder you are currently in
$XmlDirectory = $PSScriptRoot      # If you want to run it at the folder the script is saved in

Netsh wlan export profile key=clear folder=$XmlDirectory