@echo off
color 0a
:start
echo Write a book, first the title, then you text.
SET /P userin1=
SET /P userin2=
echo Your Book is:
echo %userin1%
echo %userin2%
Pause>null