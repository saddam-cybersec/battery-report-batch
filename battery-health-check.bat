@echo off
setlocal enabledelayedexpansion

set "folder=%~dp0"

:: Extract date parts (assumes DD-MM-YYYY format)
set "day=%date:~0,2%"
set "month=%date:~3,2%"
set "year=%date:~6,4%"

:: Extract time parts
set "hour=%time:~0,2%"
set "minute=%time:~3,2%"

:: Fix leading space in hour (before 10 AM)
if "%hour:~0,1%"==" " set "hour=0%hour:~1,1%"

set "filename=%folder%battery-report-%day%-%month%-%year%_%hour%-%minute%.html"

echo Generating Battery Report...
echo.

powercfg /batteryreport /output "!filename!"

echo.
echo Saved to:
echo !filename!
echo.

start "" "!filename!"
pause