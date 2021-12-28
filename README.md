# WindowsChecker
### Windows Vulnerability and Privilege Escalation Scanner
This project is for ongoing Pentesting and other required Client scans for projects related to CyberSecurity. We are working towards having a good vulnerability and privilege escalation script scanner. We using all user privilege commands in order to create a Security Assessment for clients. We are working on a framework of scripting and functions and hope to continuously improve. This is our first version and attempt at a working WindowsChecker scanner.



### SETUP WindowsChecker

##### First step is host the required files on a Web Server so, the initial 'launcher' script can download first 'trigger' script from it. Files needed on webserver (trigger, winchk1.bat, winchk2.ps1, winchk3.ps1, sendmail.ps1). 

##### Now EDIT the 'launcher' batch script with the WebServer IP/URL.

#### Files used with WindowsChecker


##### 1 - launcher: This a batch file that does a simple Powershell download of the 'trigger' script. 

##### 2 - trigger: This is a Powershell function script which does all the additional downloads and scripting logic.

##### 3 - winchk1.bat: Batch script used to gather information.

##### 4 - winchk2.ps1: Powershell script used to gather information.

##### 5 - winchk3.ps1: Misc Powershell script used to gather or cleanup information.

##### 6 - sendmail.ps1: Script used to attach the 3 script's output log files and send them to the email address in the script. We tried to design the functions to quickly download then execute and delete the sendmail script so credentials can stay somewhat secret. We suggest converting to EXE




### RUN WindowsChecker

##### After you a EDIT the 'launcher' with the file download location (WebServer), you can run the batch script and should send email to your the email address used in the sendmail.ps1 script. 

