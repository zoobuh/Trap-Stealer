@echo off

title Trap Stealer
rem You can do any color
color 0c

echo.
echo "$$\      $$\ $$\               $$\                              ";
echo "$$$\    $$$ |\__|              \__|                             ";
echo "$$$$\  $$$$ |$$\ $$$$$$\$$$$\  $$\                              ";
echo "$$\$$\$$ $$ |$$ |$$  _$$  _$$\ $$ |                             ";
echo "$$ \$$$  $$ |$$ |$$ / $$ / $$ |$$ |                             ";
echo "$$ |\$  /$$ |$$ |$$ | $$ | $$ |$$ |                             ";
echo "$$ | \_/ $$ |$$ |$$ | $$ | $$ |$$ |                             ";
echo "\__|     \__|\__|\__| \__| \__|\__|                             ";
echo " $$$$$$\    $$\                         $$\                     ";
echo "$$  __$$\   $$ |                        $$ |                    ";
echo "$$ /  \__|$$$$$$\    $$$$$$\   $$$$$$\  $$ | $$$$$$\   $$$$$$\  ";
echo "\$$$$$$\  \_$$  _|  $$  __$$\  \____$$\ $$ |$$  __$$\ $$  __$$\ ";
echo " \____$$\   $$ |    $$$$$$$$ | $$$$$$$ |$$ |$$$$$$$$ |$$ |  \__|";
echo "$$\   $$ |  $$ |$$\ $$   ____|$$  __$$ |$$ |$$   ____|$$ |      ";
echo "\$$$$$$  |  \$$$$  |\$$$$$$$\ \$$$$$$$ |$$ |\$$$$$$$\ $$ |      ";
echo " \______/    \____/  \_______| \_______|\__| \_______|\__|      ";
echo.
echo.
echo Coded By https://github.com/TheCuteOwl/
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
