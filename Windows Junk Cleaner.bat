@echo off
cls
TITLE Windows®SystemJunkCleaner v1.0 (C) 2010
echo.
echo Windows®SystemJunkCleaner
echo.
echo This batch script is provided as is without warranty.
echo.
echo.
echo Start cleaning and deleting system junk...
echo (Press Ctrl-C and answer Y to terminate)
cls
ver
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q "%appdata%\Microsoft\Windows\cookies\*.*"
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
rem Cache: 
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
rem Temp:
del /f /s /q "%userprofile%\AppData\Local\Temp\*.*"
rem Cookies:
del /f /s /q "%userprofile%\AppData\Roaming\Microsoft\Windows\Cookies\*.*"
rem History:
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\History\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*" 
del /f /s /q "%appdata%\Microsoft\Windows\Recent\*.*"
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
del /f /s /q %windir%\SoftwareDistribution\Download\*.*
rd /s /q "%userprofile%\Local Settings\Temp\" & md "%userprofile%\Local Settings\Temp\" 
rd /s /q %windir%\Temp & md %windir%\Temp
echo.
echo process ended Windows®SystemJunkCleaner
echo.