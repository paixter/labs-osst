@echo off
if %1 lss 0 (
echo error: a negative number
goto end)
if %1 gtr 12 (
echo error: number is too high
goto end)
set A=1
for /l %%i in (1,1,%1) do (
set /a A=A*%%i)
echo %A%
:end