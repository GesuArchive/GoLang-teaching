
CALL "%~dp0_config.cmd"

IF "%ECHO_DETAILS%" == "1" ECHO This script will install the project dependences (for the first run).
go.exe version
@REM go get -u github.com/kardianos/govendor
@REM govendor list
@REM govendor remove +u
IF "%GO_MOD_FILE_REINSTALL%" == "1" DEL ".\go.mod"
go.exe mod init "%GO_MODULE_NAME%"
go.exe mod tidy
go.exe mod vendor
IF "%ECHO_DETAILS%" == "1" ECHO Done working.

IF "%PAUSE_IN_END%" == "1" PAUSE
ENDLOCAL
EXIT /B %ERRORLEVEL%
