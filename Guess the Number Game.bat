@echo off
title Guess the Number Game

set/a num=%random% %%100

echo
echo Welcome to the Guess the Number
Game!
echo I am thinking of a number between 1 and 100
echo Can you guess what it is?
echo.

set/a guesses=0

:guess
set/p input="Enter your guess:"

set/a guesses+=1

if %input%==%num% (
  echo
  echo Congratulations! you gussed the 
number in %guesses% guesses.
echo
goto end
)else if %input% gtr %num% (
 echo
 echo your guess was too high. Try again.
 echo
 goto guess
)else(
  echo.
  echo your guess was too low. Try again.
  echo
  goto guess
)

:end
pause