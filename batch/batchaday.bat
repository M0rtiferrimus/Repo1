@echo off
Title A Batch A Day
color
echo This project will be called "A Batch A Day" and will involve me writing
echo one batch program per day to sharpen my batch programming skills.
echo Maybe one day I'll turn it into a tutorial. For now, this is a personal
echo project. For thirty days (about a month, since February is missing a couple
echo of days) I will write a new program every day. It's late tonight, 9:48 to
echo be exact (I like to be specific about start and end times of my projects), 
echo so I'll start with this program.
echo.
echo Nah, actually, I'll write a simple "Hello World" program. It's not too much
echo effort.
echo                   -M0rtiferrimus
pause
:menu
echo Type a number "x" for a day's program.
echo Type "contents" for a table of contents.
echo Type "exit" to exit.
set /p menuop=
if '%menuop%'=='exit' exit
if '%menuop%'=='contents' goto contents
if ('%menuop%' LSS '1' echo That's not a valid number.
pause
goto menu )
if ('%menuop%' GTR '30' echo I said thirty days. If you want to write more than thirty programs,
echo then edit this program yourself.
pause
goto menu )
goto %menuop%
:1
cls
%UserProfile%\batch\helloworld.bat
pause
goto menu
:2
cls
%UserProfile%\batch\command.bat
pause
goto menu
:3
cls
%UserProfile%\batch\book.bat
pause
goto menu
:4
cls
%UserProfile%\batch\matrix.bat
pause
goto menu
:5
cls
%UserProfile%\batch\calc.bat
pause
goto menu
:6
cls
%UserProfile%\batch\fakedelete.bat
pause
goto menu
:7
cls
%UserProfile%\batch\login.bat
pause
goto menu
:8
cls
%UserProfile%\batch\flashcards.bat
pause
goto menu
:9
cls
%UserProfile%\batch\textgame.bat
pause
goto menu
