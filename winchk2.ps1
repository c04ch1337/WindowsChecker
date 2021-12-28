Start-Transcript -LiteralPath .\log_winchk2.log -Append

function SystemInformation {

}

 Write "   +----------------------------------------------------------+ "
 Write "   |                Basic PowerShell Commands                 | "
 Write "   +----------------------------------------------------------+ "

 Write ""
 Write "----------------------------------------------------------------------"
 Write ""

 
 Write "   +----------------------------------------------------------+ "
 Write "   |                       Get-History                        | "
 Write "   +----------------------------------------------------------+ "


    Write "Get-History"
    Get-History
    
 Write ""
 Write "----------------------------------------------------------------------"
 Write ""

  
 Write "   +----------------------------------------------------------+ "
 Write "   |                       Get-Process                        | "
 Write "   +----------------------------------------------------------+ "


    Write "Get-Process"
    Get-Process
    
 Write ""
 Write "----------------------------------------------------------------------"
 Write ""
  
 Write "   +----------------------------------------------------------+ "
 Write "   |                       Get-PSDrive                        | "
 Write "   +----------------------------------------------------------+ "


    Write "Get-PSDrive"
    Get-PSDrive
    
 Write ""
 Write "----------------------------------------------------------------------"
 Write ""
  
 Write "   +----------------------------------------------------------+ "
 Write "   |                       Get-Service                        | "
 Write "   +----------------------------------------------------------+ "


    Write "Get-Service"
    Get-Service
    
 Write ""
 Write "----------------------------------------------------------------------"
 Write ""
   
 Write "   +----------------------------------------------------------+ "
 Write "   |                      Get-ChildItem                       | "
 Write "   +----------------------------------------------------------+ "


    Write "Get-ChildItem"
    Get-ChildItem $env:USERPROFILE
    
 Write ""
 Write "----------------------------------------------------------------------"
 Write ""
  
 Write "   +----------------------------------------------------------+ "
 Write "   |                 Windows Password Vault                   | "
 Write "   +----------------------------------------------------------+ "


    Write "Windows Password Vault"
    

   [Windows.Security.Credentials.PasswordVault,Windows.Security.Credentials,ContentType=WindowsRuntime]
    $vault = New-Object Windows.Security.Credentials.PasswordVault
    $vault.RetrieveAll() | % { $_.RetrievePassword();$_ } | select Resource, UserName, Password | Sort-Object Resource | ft -AutoSize

    
 Write ""
 Write "----------------------------------------------------------------------"
 Write ""
   
 Write "   +----------------------------------------------------------+ "
 Write "   |                   LIST Temp Files                        | "
 Write "   +----------------------------------------------------------+ "


    Write "LIST Temp Files"

       dir $env:TEMP 2> $null
        dir C:\Temp 2> $null
        dir C:\Windows\Temp 2> $null

 Write ""
 Write "----------------------------------------------------------------------"

##### KEEP ADDING COMMANDS HERE #####

Stop-Transcript
Remove-Item -Recurse -Path .\winchk2.ps1
exit
