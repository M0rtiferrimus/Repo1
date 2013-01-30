@echo off
rem --This is an improved version of the fakedelete.bat script. I will explain as the script goes.
rem --The color command can change the color of the background, text, or both. Type "color /?" in command prompt for details.
color 0c
:setx
set x=1100
rem --This next line is a function that loops however many times you set x to, so it looks like it's deleting all their documents
:deldocs
set /a x=%x%-1
echo Deleting %UserProfile%\Documents\%random%
echo Deleting %UserProfile%\Documents\%random%
echo Deleting %UserProfile%\Documents\%random%\%random%
echo Deleting %UserProfile%\Documents\%random%
if %x% GTR 0 goto deldocs
:sety
set y=1000
rem --This next line also loops, but it looks like all their pictures are being deleted
:delpics
set /a y=%y%-1
echo Deleting %UserProfile%\Pictures\IMG_%random%
echo Deleting %UserProfile%\Pictures\IMG_%random%
echo Deleting %UserProfile%\Pictures\IMG_%random%
echo Deleting %UserProfile%\Pictures\%random%%random%
echo Deleting %UserProfile%\Pictures\%random%%random%
echo Deleting %UserProfile%\Pictures\%random%%random%
if %y% GTR 0 goto delpics
:setz
set z=1000
rem --Next loop makes it look like the "virus" is covering its tracks so that it can't be erased
:delvirus
set /a z=%z%-1
echo Deleting %UserProfile%\Virus_Install\%random%%random%
echo Deleting %UserProfile%\Virus_Install\%random%%random%
echo Deleting %UserProfile%\Virus_Install\%random%%random%
echo Deleting %UserProfile%\Virus_Install\%random%%random%
if %z% GTR 0 goto delvirus
:setw
set w=10
rem --Look at the echo commands, it's pretty obvious what this is supposed to look like
:hackpasswd
set /a w=w-1
echo Hacking Password in C:\Windows\System32\password-cache
echo Hacking Password in C:\Windows\System32\password-cache
ping -n 2 127.0.0.1 > nul
echo Hacking Password in C:\Windows\System32\password-cache
echo Hacking Password in C:\Windows\System\password\cache
echo Hacking Password in C:\Windows\System\password\cache
echo Hacking Password in C:\Windows\System\password\cache
echo Hacking Password in C:\Windows\System\password\cache\usr
echo Hacking Password in C:\Windows\System32\password-cache
echo Hacking Password in C:\Windows\System32\password-cache
echo Hacking Password in C:\Windows\System32\password\hashMD5
if %w% GTR 0 goto hackpasswd
:setv
set v=0
rem --The next part is the most complex part. It looks like it's uploading the computer password, and the ping command makes it wait 1 second per loop
:sendpasswd
cls
set /a v=v+1
echo Password hacked, sending to servers: %v%%% complete
rem --127.0.0.1 is your computer's IP address, wherever you are, so it will always time out. The following command makes the loop wait 1 second each time.
ping -n 2 127.0.0.1 > nul
if %v% LSS 100 goto sendpasswd
pause
echo HAHAHA just kidding, nothing got deleted, and nothing was hacked. Open this file in notepad to see my comments!
echo Hope you got that on video!
pause
exit
rem So, now that you're reading this, it did take me about an hour and a half to fully write and test this script. I'm getting a little
rem faster at it, and better too, so if you enjoyed this script please let me know. Having some motivation is always helpful!
rem Also, feel free to mess around with the script. Where it says set x=1100, that means that the function that uses the x variable,
rem referenced by %x%, will loop that many times. Editing any message after an ECHO command will change the message that it
rem puts out. For more information, look online. If you would like me to write more scripts, just let me know and I'll see if it's
rem within my ability. Thanks for using my script!
rem	                                                                                         -Josh
rem P.S. lines that begin with REM are comments for you to read.