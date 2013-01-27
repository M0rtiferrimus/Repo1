@echo off
::This is a short script I made as part of a tutorial. I've decided it shows how to echo
::variables as well as demonstrates the function of the SET command well enough to keep.
::I do not take credit for the creation of this script, so don't try to sue me over it
::or anything.
color 0a
:start
echo Write a book, first the title, then you text.
SET /P userin1=
SET /P userin2=
echo Your Book is:
echo %userin1%
echo %userin2%
Pause>null