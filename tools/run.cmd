
CALL "%~dp0_config.cmd"

IF "%ECHO_DETAILS%" == "1" ECHO This script will run the project.
go.exe run ".\%ENTRY_POINT%.go"
IF "%ECHO_DETAILS%" == "1" ECHO Done working.

IF "%ECHO_DETAILS%" == "1" ECHO Cleaning up.
IF "%RUN_TASK__DELETE_BINS_IN_END%" == "1" DEL ".\*.exe"
IF "%ECHO_DETAILS%" == "1" ECHO Done cleaning.

IF "%PAUSE_IN_END%" == "1" PAUSE
ENDLOCAL
EXIT /B %ERRORLEVEL%
