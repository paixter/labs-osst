@echo off
set /p A=
if not %A%==- (
set S=%A%
set B=%A%
) else (
goto end
)
:while
set /p A=
if not %A%==- (
if %A% lss %S% (set S=%A%)
if %A% gtr %B% (set B=%A%)
goto while
)
echo %S%
echo %B%
:end

