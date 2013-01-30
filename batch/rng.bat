@echo off
::This is a game that has you guess a random number.
Title Random Number Game
set number=%random%
:guess
set /p guess1= Guess the number I'm thinking of!
if %guess1% LSS %number% (
echo Higher!
goto guess
)
if %guess1% GTR %number% (
echo Lower!
goto guess
)
echo You got it! Awesome Job!