@ECHO OFF
call gettests.bat
echo.
<nul (set /p x="Running official tests ... ")
dist64\runtest.exe official.decTest
IF NOT ERRORLEVEL 1 echo PASS
<nul (set /p x="Running additional tests ... ")
dist64\runtest.exe additional.decTest
IF NOT ERRORLEVEL 1 echo PASS
echo.


