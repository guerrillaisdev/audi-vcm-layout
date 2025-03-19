@echo off
echo Checking for administrator privileges...
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Administrator privileges confirmed.
) else (
    echo This script requires administrator privileges.
    echo Please right-click on this file and select "Run as administrator".
    pause
    exit /b 1
)

echo Creating symbolic link...
if exist "C:\Users\Rcper\Documents\HP Tuners\VCM Scanner\Layouts\audi-vcm-layout" (
    echo Removing existing link or directory...
    rmdir "C:\Users\Rcper\Documents\HP Tuners\VCM Scanner\Layouts\audi-vcm-layout"
)

mklink /D "C:\Users\Rcper\Documents\HP Tuners\VCM Scanner\Layouts\audi-vcm-layout" "C:\Users\Rcper\audi-vcm-layout"

if %errorLevel% == 0 (
    echo Symbolic link created successfully!
    echo Any changes to files in C:\Users\Rcper\audi-vcm-layout will now be visible to VCM Scanner.
) else (
    echo Failed to create symbolic link.
)

pause