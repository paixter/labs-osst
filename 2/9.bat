@echo off
setlocal enabledelayedexpansion
echo save old data and log in with your own data - 1
echo log out of your data and log in with old data - 2
echo clear all data - 3
set /p A=
if %A%==1 (
git config --global user.name > git.txt
git config --global user.email >> git.txt
git config --global user.name paixter
git config --global user.email korcaginpa@gmail.com
)
if %A%==2 (
set j=0
for /f %%i in ('type git.txt') do (
set /a j=j+1
if !j!==1 (git config --global user.name %%i) else (git config --global user.email %%i)
)
)
if %A%==3 (
git config --global user.name space
git config --global user.email space
git config --global user.name > git.txt
git config --global user.email >> git.txt
)