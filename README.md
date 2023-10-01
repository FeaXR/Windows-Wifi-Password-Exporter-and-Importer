# Windows WiFi Password Exporter and Importer
Simple Powershell scripts to export and import saved WiFi passwords.

Sometimes you need an easy way to back up and restore your WiFi passwords.

To run the script from PowerShell or CMD without altering your execution policy, run the commands in the folder that the script files are located:
```
powershell -ExecutionPolicy ByPass -File .\wifi_export.ps1
```
```
powershell -ExecutionPolicy ByPass -File .\wifi_import.ps1
```

To be able to run the scripts by just their names, you need to set your execution policy accordingly.
```
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
```
This command sets the execution policy for the current user to "RemoteSigned", which allows you to run scripts that are signed by a trusted publisher, as well as locally stored unsigned scripts.

# Parameters
Now you have the ability to provide input arguments for the script to determine the target location  
  
### UseCurrentLocation  
The script will save/load the passwords in the folder you are currently in your PowerShell session  
```
wifi_export -UseCurrentLocation true
wifi_import -UseCurrentLocation true
```
### Path  
Alternatively you have the possibility to directly provide a path to the folder you want to work with
```
wifi_export -Path "C:\Users\John\Desktop\wifi_psw"
wifi_import -Path "C:\Users\John\Desktop\wifi_psw"
```
If a Path is provided, the -UseCurrentLocation flag is ignored
