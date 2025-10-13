@echo off
for /r %1 %%i in (*) do (
if exist %2\%%~Ni.* echo %%~Ni)