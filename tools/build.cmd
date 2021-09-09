
CALL "%~dp0_config.cmd"

IF "%ECHO_DETAILS%" == "1" ECHO This script will build the project.
go.exe build -o ".\%ENTRY_POINT%" ".\%ENTRY_POINT%.go"
IF "%ECHO_DETAILS%" == "1" ECHO Done working.

IF "%PAUSE_IN_END%" == "1" PAUSE
ENDLOCAL
EXIT /B %ERRORLEVEL%
