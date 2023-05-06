# Windows WiFi Password Exporter and Importer
Simple Powershell scripts to export and import saved WiFi passwords.

Sometimes you need an easy way to back up and restore your WiFi passwords.

To run the script from PowerShell or CMD without altering your execution policy, run the commands:
```
powershell -ExecutionPolicy ByPass -File .\wifi_export.ps1
```
```
powershell -ExecutionPolicy ByPass -File .\wifi_import.ps1
```

To be able to run the scripts by just their names, you need to set yu execution policy accordingly.
```
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
```
This command sets the execution policy for the current user to "RemoteSigned", which allows you to run scripts that are signed by a trusted publisher, as well as locally stored unsigned scripts.
