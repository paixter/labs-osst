@echo off
set S=-1
for /r %%i in (.) do set /a S=S+1
echo %S%