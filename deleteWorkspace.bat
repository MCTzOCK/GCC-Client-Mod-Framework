@echo off
echo.
echo GCC Client Util v1.0 by MCTzOCK
echo.
set /p id=Enter the id of the workspace you want to delete "<workspace-[id]>":
goto ask

:ask
set /p s= Are you sure you want to delete workspace-%id%? [Y,N]
if /I "%s%" == "Y" (
goto delete
) else if /I "%s%" == "No" (
echo Canceled.
pause > nul
) else  (
echo Abort.
echo Input: "%s%"
goto ask
)

:delete
rmdir /S /Q workspace-%id% > nul 2> nul
if exist workspace-%id% (
echo Error deleting workspace-%id%
pause > nul
)else (
echo Deleted workspace-%id%!
pause > nul
)