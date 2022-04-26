@echo off
set Default= root
set ID1=guest1
set PASS1=guest1
set ID2=guest2
set PASS2=guest2
set ID3=guest3
set PASS3=guest3
::
:: ██╗    ██╗    ██╗    ██╗    ██╗    ██╗    ██╗    ██╗    ██╗
:: ██║    ██║    ██║    ██║    ██║    ██║    ██║    ██║    ██║
:: ██║    ██║    ██║    ██║    ██║    ██║    ██║    ██║    ██║
:: ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝
:: ██╗    ██╗    ██╗    ██╗    ██╗    ██╗    ██╗    ██╗    ██╗
:: ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝
:: ============================================================
::
:: ███╗   ██╗ ██████╗     ███████╗███╗   ██╗████████╗██████╗ ██╗   ██╗
:: ████╗  ██║██╔═══██╗    ██╔════╝████╗  ██║╚══██╔══╝██╔══██╗╚██╗ ██╔╝
:: ██╔██╗ ██║██║   ██║    █████╗  ██╔██╗ ██║   ██║   ██████╔╝ ╚████╔╝ 
:: ██║╚██╗██║██║   ██║    ██╔══╝  ██║╚██╗██║   ██║   ██╔══██╗  ╚██╔╝  
:: ██║ ╚████║╚██████╔╝    ███████╗██║ ╚████║   ██║   ██║  ██║   ██║   
:: ╚═╝  ╚═══╝ ╚═════╝     ╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝   ╚═╝ 
:: ============================================================  
:: ██╗    ██╗    ██╗    ██╗    ██╗    ██╗    ██╗    ██╗    ██╗
:: ██║    ██║    ██║    ██║    ██║    ██║    ██║    ██║    ██║
:: ██║    ██║    ██║    ██║    ██║    ██║    ██║    ██║    ██║
:: ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝
:: ██╗    ██╗    ██╗    ██╗    ██╗    ██╗    ██╗    ██╗    ██╗
:: ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝    ╚═╝
:: ============================================================ 
::
:: ███╗   ██╗ ██████╗     ███████╗███╗   ██╗████████╗██████╗ ██╗   ██╗
:: ████╗  ██║██╔═══██╗    ██╔════╝████╗  ██║╚══██╔══╝██╔══██╗╚██╗ ██╔╝
:: ██╔██╗ ██║██║   ██║    █████╗  ██╔██╗ ██║   ██║   ██████╔╝ ╚████╔╝ 
:: ██║╚██╗██║██║   ██║    ██╔══╝  ██║╚██╗██║   ██║   ██╔══██╗  ╚██╔╝  
:: ██║ ╚████║╚██████╔╝    ███████╗██║ ╚████║   ██║   ██║  ██║   ██║   
:: ╚═╝  ╚═══╝ ╚═════╝     ╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝   ╚═╝ 
:: ============================================================ 
chcp 65001
mode 90,20
title Login Application [Registered: %date%]
:LOGINSCREEN
cls
echo.
echo                    [40;35m▄▀▀▄ ▄▀▀▄  ▄▀▀▄ ▀▀▄  [40;37m▄▀▀█▄▄   ▄▀▀█▄▄▄▄  [40;35m▄▀▀▄▀▀▀▄ 
echo                   [40;35m█   █    █ █   ▀▄ ▄▀ [40;37m▐ ▄▀   █ ▐  ▄▀   ▐ [40;35m█   █   █ 
echo                   [40;35m▐  █    █  ▐     █     [40;37m█▄▄▄▀    █▄▄▄▄▄  [40;35m▐  █▀▀█▀  
echo                      [40;35m█   ▄▀        █     [40;37m█   █    █    ▌   [40;35m▄▀    █  
echo                       [40;35m▀▄▀        ▄▀     [40;37m▄▀▄▄▄▀   ▄▀▄▄▄▄   [40;35m█     █   
echo                                  [40;35m█     [40;37m█    ▐    █    ▐   [40;35m▐     ▐   
echo                                  [40;35m▐     [40;37m▐         ▐                  
echo.
echo.
echo                                      [40;33mLOGIN REQUIRED
echo.
echo.
set USERID=
set /p USERID=[40;33m$[40;35mEnter Your UserID:[40;33m
set PASSID=
set /p PASSID=[40;33m$[40;35mEnter Your Password:[40;33m
if %USERID%==%Default% if %PASSID%==%Default% goto ACCEPTED
if %USERID%==%ID1% if %PASSID%==%PASS1% goto ACCEPTED
if %USERID%==%ID2% if %PASSID%==%PASS2% goto ACCEPTED
if %USERID%==%ID3% if %PASSID%==%PASS3% goto ACCEPTED
goto FAILED

:VALID
echo [40;33mEnter Valid Option.
timeout 3 >nul
goto menu

exit
:FAILED
echo.
echo [40;35mGiven UserID and/or Password are Incorrect...
echo [40;35mPlease Try Again...
timeout 3 >nul
goto LOGINSCREEN
:ACCEPTED
goto menu
:menu
title Logged in as %username% Using %UserID%
cls
echo.
echo                    [40;35m▄▀▀▄ ▄▀▀▄  ▄▀▀▄ ▀▀▄  [40;37m▄▀▀█▄▄   ▄▀▀█▄▄▄▄  [40;35m▄▀▀▄▀▀▀▄ 
echo                   [40;35m█   █    █ █   ▀▄ ▄▀ [40;37m▐ ▄▀   █ ▐  ▄▀   ▐ [40;35m█   █   █ 
echo                   [40;35m▐  █    █  ▐     █     [40;37m█▄▄▄▀    █▄▄▄▄▄  [40;35m▐  █▀▀█▀  
echo                      [40;35m█   ▄▀        █     [40;37m█   █    █    ▌   [40;35m▄▀    █  
echo                       [40;35m▀▄▀        ▄▀     [40;37m▄▀▄▄▄▀   ▄▀▄▄▄▄   [40;35m█     █   
echo                                  [40;35m█     [40;37m█    ▐    █    ▐   [40;35m▐     ▐   
echo                                  [40;35m▐     [40;37m▐         ▐                  
echo.
echo.
echo.
echo             [40;37m1) IP LookUp Tool         [40;37m2) Pinger              [40;37m3) Ping of Death 
echo.   
echo             [40;35m4) Telnet Tool            [40;35m5) Remote Shut         [40;35m6) PortScanner
echo.
echo             [40;37m7) NetTool                [40;37m8) Stresser            [40;37m9) About
echo.
echo.
set CHOICE=
set /p CHOICE=[40;33m$[40;35mUserChoice:[40;33m
if %CHOICE%==1 start iptool.bat && goto menu && goto LOG1
if %CHOICE%==ip start iptool.bat && goto menu && goto LOG1
if %CHOICE%==2 start pingers.bat && goto menu && goto LOG2
if %CHOICE%==pinger start pingers.bat && goto menu && goto LOG2
if %CHOICE%==3 start pingdeath.bat && goto menu && goto LOG3
if %CHOICE%==pingdeath start pingdeath.bat && goto menu && goto LOG3
if %CHOICE%==4 start putty.exe && goto menu && goto LOG4
if %CHOICE%==putty start putty.exe && goto menu && goto LOG4
if %CHOICE%==5 goto SHUT && goto menu && goto LOG5
if %CHOICE%==shutdown goto SHUT && goto menu && goto LOG5
if %CHOICE%==6 start Pscan.exe && goto menu && goto LOG6
if %CHOICE%==pscan start Pscan.exe && goto menu && goto LOG6
if %CHOICE%==7 start nettool.bat && goto menu && goto LOG7
if %CHOICE%==nettool start nettool.bat && goto menu && goto LOG7
if %CHOICE%==8 goto STRS && goto menu && goto LOG8
if %CHOICE%==stresser goto STRS && goto menu && goto LOG8
if %CHOICE%==9 goto ABOUT && goto menu && goto LOG9
if %CHOICE%==about goto ABOUT && goto menu && goto LOG9
if %CHOICE%==vyber.cmd goto secret && goto menu
goto Valid

:STRS
start https://icyaf.neocities.org/stresser.html
exit

:SHUT
shutdown -i
pause
goto menu
:ABOUT
cls
echo "Vyber Hub"
echo all rights reserved
echo.
echo Created by vyber.cmd, in colaborationn with "The Red Team"
echo.
echo Version 3.2
echo PreRelease "Invite Only"
echo.
echo Join Discord For Help
echo GitHub for other tools
echo.
echo Recent Programs by vyber.cmd
echo.
echo Discord Tool
echo SMAC device
echo Keep-Safe Password Manager
pause>nul
goto menu

:secret
echo WOW YOU FOUND ME
pause>nul
goto menu2
:LOG1
echo %date%>> logs.txt
echo %username% Commited IPLookUp >> logs.txt
echo Logged in with %USERID% >> logs.txt
echo ________________________ >> logs.txt
exit

:LOG2
echo %date%>> logs.txt
echo %username% Commited Pinger >> logs.txt
echo Logged in with %USERID% >> logs.txt
echo _________________________ >> logs.txt
exit

:LOG3
echo %date%>> logs.txt
echo %username% Commited Ping of Death >> logs.txt
echo Logged in with %USERID% >> logs.txt
echo ________________________ >> logs.txt
exit

:LOG4
echo %date%>> logs.txt
echo %username% Commited Telnet Tool (PuTTY) >> logs.txt
echo Logged in with %USERID% >> logs.txt
echo ________________________ >> logs.txt
exit

:LOG5
echo %date%>> logs.txt
echo %username% Commited Remote Shutdown >> logs.txt
echo Logged in with %USERID% >> logs.txt
echo ________________________ >> logs.txt
exit

:LOG6
echo %date%>> logs.txt
echo %username% Commited PortScanner (Pscan) >> logs.txt
echo Logged in with %USERID% >> logs.txt
echo ________________________ >> logs.txt
exit

:LOG7
echo %date%>> logs.txt
echo %username% Commited NetTool >> logs.txt
echo Logged in with %USERID% >> logs.txt
echo ________________________ >> logs.txt
exit

:LOG8
echo %date%>> logs.txt
echo %username% Commited Stresser >> logs.txt
echo Logged in with %USERID% >> logs.txt
echo ________________________ >> logs.txt
exit


:menu2
title Logged in as %username% Using %UserID%
cls
echo.
echo                       ▄▀▀▄ ▄▀▀▄  ▄▀▀▄ ▀▀▄  ▄▀▀█▄▄   ▄▀▀█▄▄▄▄  ▄▀▀▄▀▀▀▄  ▄▀▀▄▀▀▀▄     
echo                     █   █    █ █   ▀▄ ▄▀ ▐ ▄▀   █ ▐  ▄▀   ▐ █   █   █ █   █   █     
echo                     ▐  █    █  ▐     █     █▄▄▄▀    █▄▄▄▄▄  ▐  █▀▀█▀  ▐  █▀▀█▀      
echo                        █   ▄▀        █     █   █    █    ▌   ▄▀    █   ▄▀    █      
echo                         ▀▄▀        ▄▀     ▄▀▄▄▄▀   ▄▀▄▄▄▄   █     █   █     █       
echo                                    █     █    ▐    █    ▐   ▐     ▐   ▐     ▐       
echo                                    ▐     ▐         ▐                                
echo.     
echo.
echo.
echo.
echo             [40;37m1) IP LookUp Tool         [40;37m2) Pinger              [40;37m3) Ping of Death 
echo.   
echo             [40;35m4) Telnet Tool            [40;35m5) Remote Shut         [40;35m6) PortScanner
echo.
echo             [40;37m7) NetTool                [40;37m8) Stresser            [40;37m9) About
echo.
pause