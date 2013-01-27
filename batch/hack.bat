@echo off
::Now, this is my first full-on batch script. It uses my own (I did not say "unique") ideas for attempting to gain
::access to restricted areas of, say, school computers. On any normal PC, you will not get
::past step 2, since it exits the script and goes into cmd.exe whenever it is not blocked.
::Maybe a better implementation of step 2 would be to have cmd.exe attempt to open in a new
::window.
echo Starting batch...
echo Trying to get root access, hold on...
:root
cd C:\
echo %UserProfile%, do you have root access? (y/n)
@echo on
set /p userin1=
@echo off
if '%userin1%'=='y' goto exit
if '%userin1%'=='Y' goto exit
if '%userin1%'=='n' goto step2
if '%userin1%'=='N' goto step2
echo That's not a 'y' or an 'n'. Let's try this again...
goto root
:step2
cls
echo Ok, trying to open cmd, just a second...
cmd
echo If it is not blocked on this PC, cmd.exe ought to be open. Is it? (y/n)
set /p userin2=
if '%userin2%'=='y' goto exit
if '%userin2%'=='Y' goto exit
if '%userin2%'=='n' goto step3
if '%userin2%'=='N' goto step3
echo Invalid input.
goto step2
:step3
cls
echo You're under some tight security, then.
echo Let's try getting to the control panel...
control panel
echo Did that work? (y/n)
set /p userin3=
if '%userin3%'=='y' goto exit
if '%userin3%'=='Y' goto exit
if '%userin3%'=='n' goto step4
if '%userin3%'=='N' goto step4
echo Invalid input.
goto step3
:step4
cls
echo Whew...
echo Ok, time for cmd mode. This function will cause the script
echo to be a replacement for the built-in cmd.exe. It will
echo pass commands on to the kernel just like cmd.exe.
pause
:step5
cls
echo Enter cmd mode? (y/n)
set /p userin4=
if '%userin4%'=='y' goto cmdmode
if '%userin4%'=='Y' goto cmdmode
if '%userin4%'=='n' goto exit
if '%userin4%'=='N' goto exit
echo Invalid input.
goto step5
:cmdmode
set /p userin5=%CD%-
%userin5%
goto cmdmode
:exit
echo Thanks for using this script!
pause
exit