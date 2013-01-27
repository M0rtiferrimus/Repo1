@echo off
::Part of an Instructables tutorial on batch programming, this script allows you to
::create local accounts as a proof-of-concept. It does not do anything past the Welcome
::message.
title Instructables Program
color 1f
:start
echo Do you already have an account? (y/n)
set /p userin1=
if '%userin1%'=='n' goto newuser
if '%userin1%'=='N' goto newuser
if '%userin1%'=='y' goto user
if '%userin1%'=='Y' goto user
echo That's not a 'y' or an 'n'. Let's try this again:
goto start
:newuser
set /p username=Please enter your username:
set /p password=Please enter your password:
echo %username%>username.txt
echo %password%>password.txt
:user
set /p userin2=<username.txt
set /p userin3=<password.txt
set /p userin4=Username:
set /p userin5=Password:
if '%userin4%'=='%userin2%' goto password
if not '%userin4%'=='%userin2%' goto user
:password
if '%userin5%'=='%userin3%' goto begin
if not '%userin5%'=='%userin3%' goto user
:begin
echo Welcome, %userin2%!