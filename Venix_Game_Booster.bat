@echo off

NET SESSION >NUL 2>NUL
IF %ERRORLEVEL% NEQ 0 (
    echo Administrator privileges required. Restarting with elevated privileges...
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList '%*'"
    exit /B
)

shift /0
title Venix Game Booster // Made with love by SimonGX#1000 // discord.gg/tweaks
cd %systemroot%\system32
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
goto :ABC
)

:ABC
cls
chcp 65001 >nul 2>&1
cd /d "%~dp0
goto :Welcome


:menu
cls
color d   
mode con lines=19 cols=92
echo.
echo.
echo                [90m██[96m╗   [90m██[96m╗[90m████████[96m╗[90m██[96m╗    [90m██[96m╗[90m███████[96m╗ [90m█████[96m╗ [90m██[96m╗  [90m██[96m╗[90m███████[96m╗
echo                [90m██[96m║   [90m██[96m║[96m╚══[90m██[96m╔══╝[90m██[96m║    [90m██[96m║[90m██[96m╔════╝[90m██[96m╔══[90m██[96m╗[90m██[96m║ [90m██[96m╔╝[90m██[96m╔════╝
echo                [90m██[96m║   [90m██[96m║   [90m██[96m║   [90m██[96m║ [90m█[96m╗[90m ██[96m║[90m█████[96m╗  [90m███████[96m║[90m█████[96m╔╝ [90m███████[96m╗
echo                [96m╚[90m██[96m╗[90m ██[96m╔[96m╝   [90m██[96m║   [90m██[96m║[90m███[96m╗[90m██[96m║[90m██[96m╔══╝  [90m██[96m╔══[90m██[96m║[90m██[96m╔═[90m██[96m╗ ╚════[90m██[96m║
echo                 [96m╚[90m████[96m╔[96m╝    [90m██[96m║   ╚[90m███[96m╔[90m███[96m╔╝[90m███████[96m╗[90m██[96m║  [90m██[96m║[90m██[96m║  [90m██[96m╗[90m███████[96m║
echo                  [96m╚═══[96m╝     ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝  
echo.
echo.                          
call :ColorText 88 "============================================================================================"  
echo.    
call :ColorText 0 "     ["    
call :ColorText 4 " 1"    
call :ColorText 0 " ]"    
call :ColorText 8 " D"    
call :ColorText 8 "I"    
call :ColorText 8 "S"       
call :ColorText 8 "A"    
call :ColorText 8 "B"    
call :ColorText 8 "L"    
call :ColorText 8 "E" 
call :ColorText 8 " E"       
call :ColorText 8 "X"    
call :ColorText 8 "P"    
call :ColorText 8 "L"    
call :ColorText 8 "O" 
call :ColorText 8 "R"       
call :ColorText 8 "E"    
call :ColorText 8 "R"          
call :ColorText 0 "        ["    
call :ColorText 4 " 2"    
call :ColorText 0 " ]"    
call :ColorText 8 " E"    
call :ColorText 8 "N"    
call :ColorText 8 "A"       
call :ColorText 8 "B"       
call :ColorText 8 "L"    
call :ColorText 8 "E"
call :ColorText 8 " E"    
call :ColorText 8 "X"   
call :ColorText 8 "P"       
call :ColorText 8 "L"    
call :ColorText 8 "O"    
call :ColorText 8 "R"    
call :ColorText 8 "E"  
call :ColorText 8 "R" 
call :ColorText 0 "        ["    
call :ColorText 4 " X"    
call :ColorText 0 " ]"    
call :ColorText 8 " D"    
call :ColorText 8 "I"    
call :ColorText 8 "S"       
call :ColorText 8 "C"       
call :ColorText 8 "O"    
call :ColorText 8 "R"
call :ColorText 8 "D"    
call :ColorText 8 " S"   
call :ColorText 8 "E"       
call :ColorText 8 "R"    
call :ColorText 8 "V"    
call :ColorText 8 "E"    
call :ColorText 8 "R"  
echo.          
call :ColorText 88 "============================================================================================"                      
echo.
set choice=
set /p "choice=[92m 
if "!choice!"=="1" goto :DISABLE                                                        "
if "!choice!"=="2" goto :ENABLE
if /i "!choice!"== "X" start "" "https://discord.gg/tweaks" && goto menu
if /i "!choice!"== "x" start "" "https://discord.gg/tweaks" && goto menu

:DISABLE
taskkill /IM explorer.exe /F
goto :menu

:ENABLE
start explorer.exe
goto :menu

:ColorText    
echo off    
<nul set /p ".=%DEL%" > "%~2"    
findstr /v /a:%1 /R "^$" "%~2" nul    
del "%~2" > nul 2>&1    
goto :eof

:TypeWritting effect

:TYPE
SET "d[text]=%~1"
CALL :TYPELOOP
GOTO :EOF

:TYPELOOP
IF "%d[text]:~0,1%" == "#" (
    <NUL SET /P "=^!"
) else (
    <NUL SET /P "=d!BS!%d[text]:~0,1%"
)
SET "d[text]=%d[text]:~1%"
IF "%d[text]%" == "" (
    GOTO :EOF
) else (
    FOR /L %%J in (1, 100, 10000000) DO REM
    GOTO :TYPELOOP 
)
exit

:TYPEFast
SET "d[text]=%~1"
CALL :TYPELOOPFast
GOTO :EOF

:TYPELOOPFast
IF "%d[text]:~0,1%" == "#" (
    <NUL SET /P "=^!"
) else (
    <NUL SET /P "=d!BS!%d[text]:~0,1%"
)
SET "d[text]=%d[text]:~1%"
IF "%d[text]%" == "" (
    GOTO :EOF
) else (
    FOR /L %%J in (1, 100, 1000000) DO REM
    GOTO :TYPELOOPFast
)
exit  

:Welcome
cls
setlocal enabledelayedexpansion
mode con lines=22 cols=92
echo.
echo.
echo [96m                           
echo.     
echo               [90m██████[96m╗ [90m██████[96m╗ [90m███████[96m╗[90m███████[96m╗[90m████████[96m╗[90m██[96m╗[90m███╗   [90m██[96m╗ [90m██████[96m╗ 
echo              [90m██[96m╔════╝ [90m██[96m╔══[90m██[96m╗[90m██[96m╔════╝[90m██[96m╔════╝╚══[90m██[96m╔══╝[90m██║[90m████[96m╗  [90m██[96m║[90m██[96m╔════╝ 
echo              [90m██[96m║  [90m███[96m╗[90m██████[96m╔╝[90m█████[96m╗  [90m█████[96m╗     [90m██[96m║   [90m██[96m║[90m██[96m╔[90m██[96m╗ [90m██[96m║[90m██[96m║  [90m███[96m╗         
echo              [90m██[96m║   [90m██[96m║[90m██[96m╔══[90m██[96m╗[90m██[96m╔══╝  [90m██[96m╔══╝     [90m██[96m║   [90m██[96m║[90m██[96m║╚[90m██[96m╗[90m██[96m║[90m██[96m║   [90m██[96m║ 
echo              [96m╚[90m██████[96m╔╝[90m██[96m║  [90m██[96m║[90m███████╗[90m███████[96m╗   [90m██[96m║   [90m██[96m║[90m██[96m║ ╚[90m████[96m║╚[90m██████[96m╔╝
echo               [96m╚═════╝ [96m╚═╝  [96m╚═╝╚══════╝╚══════╝   ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ 
echo.                             
echo. 
call :ColorText 8 "                 W"    
call :ColorText 8 "e"    
call :ColorText 8 "l"       
call :ColorText 8 "c" 
call :ColorText 8 "o"    
call :ColorText 8 "m"       
call :ColorText 8 "e"
call :ColorText 8 " W"    
call :ColorText 8 "e"       
call :ColorText 8 " A"
call :ColorText 8 "r"       
call :ColorText 8 "e"    
call :ColorText 8 " A"     
call :ColorText 8 "b"    
call :ColorText 8 "o"    
call :ColorText 8 "u"       
call :ColorText 8 "t"    
call :ColorText 8 " T"    
call :ColorText 8 "o"    
call :ColorText 8 " S" 
call :ColorText 8 "h"       
call :ColorText 8 "o"    
call :ColorText 8 "w"    
call :ColorText 8 " Y"    
call :ColorText 8 "o"    
call :ColorText 8 "u "
call :ColorText 8 " H"
call :ColorText 8 "o"
call :ColorText 8 "w"
call :ColorText 8 " T"
call :ColorText 8 "o"
call :ColorText 8 " U"
call :ColorText 8 "s"
call :ColorText 8 "e"
call :ColorText 8 " T"
call :ColorText 8 "h"
call :ColorText 8 "i"   
call :ColorText 8 "s" 
call :ColorText 8 " T" 
call :ColorText 8 "w"
call :ColorText 8 "e"
call :ColorText 8 "a"
call :ColorText 8 "k" 
echo.
echo                                    [90mdiscord.gg/tweaks
echo.
echo.
call :ColorText 8 "                               T"
call :ColorText 8 "y"
call :ColorText 8 "p"
call :ColorText 8 "e"
call :ColorText 6 " P"
call :ColorText 6 "e"
call :ColorText 6 "r"   
call :ColorText 6 "s" 
call :ColorText 6 "i"
call :ColorText 6 "s"
call :ColorText 6 "t"
call :ColorText 8 " T"
call :ColorText 8 "o"
call :ColorText 8 " P"   
call :ColorText 8 "r"
call :ColorText 8 "o"
call :ColorText 8 "c"
call :ColorText 8 "e"
call :ColorText 8 "e"
call :ColorText 8 "d"
echo.
echo.
echo.
set /p userlogin= ^>Next page:  
if [%userlogin%]==[] echo.&echo Invalid User Input&echo.&pause&goto Disclaimer 
if %userlogin%==Persist goto WTK
if %userlogin%==persist goto WTK
exit  

:WTK
cls
FOR /F %%A in ('"PROMPT $H&FOR %%B in (1) DO REM"') DO SET "BS=%%A"
setlocal enabledelayedexpansion
mode con lines=14 cols=92
echo.
echo.
call :TYPEFast "         Please ensure that you have created a restore point before proceeding."
echo.
echo. 
call :TYPEFast "                   This tool has a Disable and Enable Explore option."
echo.                                                   
call :TYPEFast "            Before clicking enable, please ensure that you have opened a game."
echo.    
call :TYPEFast "            Before clicking disable, please ensure that you have closed a game." 
echo.                                                                                                  
call :TYPEFast " If you encounter any issues with the utility, open a ticket on our server for assistance."    
echo.                                                                            
echo.
call :ColorText 8 "                               T"
call :ColorText 8 "y"
call :ColorText 8 "p"
call :ColorText 8 "e"
call :ColorText 6 " U"
call :ColorText 6 "n"
call :ColorText 6 "d"   
call :ColorText 6 "e" 
call :ColorText 6 "r"
call :ColorText 6 "s"
call :ColorText 6 "t"
call :ColorText 6 "o"
call :ColorText 6 "o"
call :ColorText 6 "d"
call :ColorText 8 " T"
call :ColorText 8 "o"
call :ColorText 8 " E"   
call :ColorText 8 "n"
call :ColorText 8 "t"
call :ColorText 8 "e"
call :ColorText 8 "r"
call :ColorText 8 " M"
call :ColorText 8 "e"
call :ColorText 8 "n"
call :ColorText 8 "u"
echo.                                    
set /p userlogin= ^>Next page:  
if [%userlogin%]==[] echo.&echo Invalid User Input&echo.&pause&goto Disclaimer 
if %userlogin%==Understood goto menu
if %userlogin%==understood goto menu
exit  



