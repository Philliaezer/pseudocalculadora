@echo off
title Calculator
echo /p opts=Choose (a/b/c/d): 

echo opts | findstr `^[abcd]$`

set /p n1= Number 1: 
set /p n2= Number 2: 

if "%opts%" == "a" call :add %n1% %n2%
if "%opts%" == "b" call :sub %n1% %n2%
if "%opts%" == "c" call :mul %n1% %n2%
if "%opts%" == "d" call :div %n1% %n2%
// else (echo "erro")

@rem call :add %n1% %n2%

echo Result: %return%

pause

goto :eof

:add
set /a return=%~1+%~2
EXIT /b

:sub
set /a return=%~1-%~2
EXIT /b

:mul
set /a return=%~1*%~2
EXIT /b

:div
set /a return=%~1/%~2
EXIT /b
