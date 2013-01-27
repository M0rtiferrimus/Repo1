@echo off
echo This is a command line application.
echo Very simple.
echo The only difference is that the SET command
echo (and ECHO too, apparently) seems to hate the
echo "greater than" sign, so I use a "-" sign instead.
echo It is the same principle.
echo.
:command
set /p userin1=%CD%-
%userin1%
goto command