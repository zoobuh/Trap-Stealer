@echo off

title DEATHWARE MALWARE BUILDER
rem You can do any color
color 0c

echo.
echo
echo ██████╗░███████╗░█████╗░████████╗██╗░░██╗  ░██╗░░░░░░░██╗░█████╗░██████╗░███████╗
echo ██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██║░░██║  ░██║░░██╗░░██║██╔══██╗██╔══██╗██╔════╝
echo ██║░░██║█████╗░░███████║░░░██║░░░███████║  ░╚██╗████╗██╔╝███████║██████╔╝█████╗░░
echo ██║░░██║██╔══╝░░██╔══██║░░░██║░░░██╔══██║  ░░████╔═████║░██╔══██║██╔══██╗██╔══╝░░
echo ██████╔╝███████╗██║░░██║░░░██║░░░██║░░██║  ░░╚██╔╝░╚██╔╝░██║░░██║██║░░██║███████╗
echo ╚═════╝░╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░╚═╝  ░░░╚═╝░░░╚═╝░░╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝
echo.
echo.
echo.
echo Press any key to continue with the builder.
set /p trap=

python builder.py

if errorlevel 1 (
    echo.
    echo Error occurred during execution. Attempting to install requirements...
    python -m pip install -r requirements.txt
    echo.
    echo Installation complete.
    pause
)
