@echo off
color 06
TITLE Requesting Administrator Rights...
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if '%errorlevel%' NEQ '0' (
    echo Requesting Administrative Privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"

TITLE Importing Windows Default Power Plans...
::Balanced Plan
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/847122070898212974/Balanced.pow" -OutFile "%temp%\Balanced.pow" >nul 2>&1
powercfg -import "%temp%\Balanced.pow" 381b4222-f694-41f0-9685-ff5bb260df2e >nul 2>&1
::High Performance Plan
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/847122069070020658/High_performance.pow" -OutFile "%temp%\High_performance.pow" >nul 2>&1
powercfg -import "%temp%\High_performance.pow" 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1
powercfg -SETACTIVE "8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c" >nul 2>&1
::Power Saving Plan
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/847122073045303346/Power_saver.pow" -OutFile "%temp%\Power_saver.pow" >nul 2>&1
powercfg -import "%temp%\Power_saver.pow" a1841308-3541-4fab-bc81-f71556f20b4a >nul 2>&1
goto:success

:success
TITLE Success!
SET msgboxTitle=Success!
SET msgboxBody=All Windows Default Power Plans Have Been Successfully Installed!
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
exit

