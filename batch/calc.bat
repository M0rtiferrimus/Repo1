@echo off
::Does not work, for now. Incomplete. Will fix soon.
echo This is a simple calculator program.
echo It will demonstrate the capabilities
echo of the SET /A command.
echo.
:calc
cls
set /p userin1= Expression?
set /a math=%userin1%
echo %math%
pause
goto calc