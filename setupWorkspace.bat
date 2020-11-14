@echo off
echo.
echo GCC Client Util v1.0 by MCTzOCK
echo.
goto init

:init
set rnd=%random%
mkdir workspace-%rnd%
cd workspace-%rnd%
mkdir src
goto download

:download
echo.
echo Downloading Files, this can take a while!
echo.
powershell.exe Invoke-WebRequest -Uri http://cloud.mctzock.de/gcc/client/developer/mod-framework/recompile.bat -OutFile recompile.bat
cd src
powershell.exe Invoke-WebRequest -Uri http://cloud.mctzock.de/gcc/client/developer/mod-framework/src/Main.java -OutFile Main.java
powershell.exe Invoke-WebRequest -Uri http://cloud.mctzock.de/gcc/client/developer/mod-framework/src/mod.json -OutFile mod.json
goto finish

:finish
echo.
echo Finished! You can now create your mod and compile it whit the recompile.bat! You find the java files in the workspace-%rnd%/src folder!
echo.
pause > nul
