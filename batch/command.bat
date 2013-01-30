@echo off
::Works perfectly, except for the problem described.
echo This is a command line application.
echo Very simple, and similar to cmd.exe.
echo Only problem is, the syntax of the SET command
echo is wrong. See a way to fix it?
:command
set /p userin1=%CD%%>
%userin1%
goto command