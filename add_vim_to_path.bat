@echo off
echo Adding Vim to system PATH...
echo This requires administrator privileges.
echo.

powershell -Command "Start-Process powershell -ArgumentList '-ExecutionPolicy Bypass -File \"%~dp0add_vim_to_path.ps1\"' -Verb RunAs"

echo.
echo If a UAC prompt appeared and you clicked Yes, Vim should now be added to your PATH.
echo You may need to restart your terminal or computer for the changes to take effect.
echo.
pause