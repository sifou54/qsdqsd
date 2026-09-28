@echo off       
:SexCleaner
echo off
shift /0
mode 128,33
title VTweaks NIGGERS Special Tweaks
cd %systemroot%\system32
call :IsAdmin
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
goto :ABC
)

:ABC       
cls    
setlocal enabledelayedexpansion
chcp 65001 >nul 2>&1
cd /d "%~dp0"
goto :menu


:menu
cls
color d   
mode 78, 23
echo.
echo.
echo         [90m██[96m╗   [90m██[96m╗[90m████████[96m╗[90m██[96m╗    [90m██[96m╗[90m███████[96m╗ [90m█████[96m╗ [90m██[96m╗  [90m██[96m╗[90m███████[96m╗ 
echo         [90m██[96m║   [90m██[96m║[96m╚══[90m██[96m╔══╝[90m██[96m║    [90m██[96m║[90m██[96m╔════╝[90m██[96m╔══[90m██[96m╗[90m██[96m║ [90m██[96m╔╝[90m██[96m╔════╝ 
echo         [90m██[96m║   [90m██[96m║   [90m██[96m║   [90m██[96m║ [90m█[96m╗[90m ██[96m║[90m█████[96m╗  [90m███████[96m║[90m█████[96m╔╝ [90m███████[96m╗ 
echo         [96m╚[90m██[96m╗[90m ██[96m╔[96m╝   [90m██[96m║   [90m██[96m║[90m███[96m╗[90m██[96m║[90m██[96m╔══╝  [90m██[96m╔══[90m██[96m║[90m██[96m╔═[90m██[96m╗ ╚════[90m██[96m║ 
echo          [96m╚[90m████[96m╔[96m╝    [90m██[96m║   ╚[90m███[96m╔[90m███[96m╔╝[90m███████[96m╗[90m██[96m║  [90m██[96m║[90m██[96m║  [90m██[96m╗[90m███████[96m║ 
echo           [96m╚═══[96m╝     ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝  
echo.
echo.
call :ColorText 5 " M"       
call :ColorText 5 "a"    
call :ColorText 5 "d"    
call :ColorText 5 "e"    
call :ColorText 5 " B"    
call :ColorText 5 "y "
call :ColorText 6 " S"
call :ColorText 6 "i"
call :ColorText 6 "m"
call :ColorText 6 "o"
call :ColorText 6 "n"
call :ColorText 6 "G"
call :ColorText 6 "X"
call :ColorText 6 "#"
call :ColorText 6 "0"
call :ColorText 6 "0"   
call :ColorText 6 "0" 
call :ColorText 6 "1" 
echo.                          
call :ColorText 88 "=============================================================================="  
echo.
echo.    
call :ColorText 0 "         ["    
call :ColorText 4 " 1"    
call :ColorText 0 " ]"    
call :ColorText f " D"    
call :ColorText f "I"    
call :ColorText f "S"       
call :ColorText f "A"    
call :ColorText f "B"    
call :ColorText f "L"    
call :ColorText f "E" 
call :ColorText f " E"       
call :ColorText f "X"    
call :ColorText f "P"    
call :ColorText f "L"    
call :ColorText f "O" 
call :ColorText f "R"       
call :ColorText f "E"    
call :ColorText f "R"    
call :ColorText 0 "       ["    
call :ColorText 4 " 2"    
call :ColorText 0 " ]"    
call :ColorText f " E"    
call :ColorText f "N"    
call :ColorText f "A"       
call :ColorText f "B"       
call :ColorText f "L"    
call :ColorText f "E"
call :ColorText f " E"    
call :ColorText f "X"   
call :ColorText f "P"       
call :ColorText f "L"    
call :ColorText f "O"    
call :ColorText f "R"    
call :ColorText f "E"  
call :ColorText f "R"           
echo.
echo.
echo ONLY RUN "1" AFTER LAUNCHING A GAME
echo ONLY RUN "2" ONCE U FINSH UR GAME
echo NOTE Do not close until ur DONE with BOTH PAGE!
echo.
call :ColorText 88 "=============================================================================="                        
echo.
set choice=
set /p "choice=[92m 
if "!choice!"=="1" goto :DISABLE                                                        "
if "!choice!"=="2" goto :ENABLE

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
