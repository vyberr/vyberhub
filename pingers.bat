echo off
chcp 65001 >nul
mode 90,20
title PINGERS 
color 5
:again
cls
echo.
echo                     [40;35m██████╗ ██╗███╗   ██╗ ██████╗ ███████╗██████╗ ███████╗
echo                     [40;35m██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝██╔══██╗██╔════╝
echo                     [40;35m██████╔╝██║██╔██╗ ██║██║  ███╗█████╗  ██████╔╝███████╗
echo                     [40;35m██╔═══╝ ██║██║╚██╗██║██║   ██║██╔══╝  ██╔══██╗╚════██║
echo                     [40;35m██║     ██║██║ ╚████║╚██████╔╝███████╗██║  ██║███████║
echo                     [40;35m╚═╝     ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝
echo.                                                      
echo.            
echo                             1) Reaper                  2) ReaperV2            
set /p again=[40;33m$[40;35mEnter Your Choice:[40;33m
if %again% == 1 start Reaper.bat
if %again% == 2 start ReaperV2.bat
goto again





