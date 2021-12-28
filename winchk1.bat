@ECHO OFF
title "Windows Checker"
SET LOGFILE=.\log_winchk1.log
call :winchk >> %LOGFILE% 2>&1
EXIT
:winchk
set cwd=%cd% mode con:cols=160 lines=9999
cd c:\
echo ====================
echo WINDOWS PRIV CHECKER
echo ====================
echo.

echo [*] GETTING BASIC SYSTEM INFO
echo.

echo [+] systeminfo (use output with https://github.com/bitsadmin/wesng)
systeminfo
echo.

echo [+] Patch Information
wmic qfe get Caption,Description,HotFixID,InstalledOn
echo.

echo [+] Processor Information
SET Processor
echo.

echo [+] Domain Information
set user
echo.

cd cd:\
del WindowsChecker.EXE /s

echo Windows Check Completed!
echo.


##### KEEP ADDING addition batch file commands #####

(goto) 2>nul & del "%~f0"
