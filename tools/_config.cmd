
@REM Config file. For import in others scripts.
@REM CALL "%~dp0_config.cmd"

@ECHO OFF
CLS
ENDLOCAL

SET "PATH_ROOT=%~dp0..\"
@REM SET GOPATH=C:\Users\User\go
SET "PAUSE_IN_END=0"
SET "ENTRY_POINT=02_vars"
SET "GO_MODULE_NAME=GoLang-teaching"
SET "GO_MOD_FILE_REINSTALL=1"
SET "ECHO_DETAILS=0"
SET "RUN_TASK__DELETE_BINS_IN_END=0"

CD /D "%PATH_ROOT%"

SETLOCAL ENABLEDELAYEDEXPANSION
IF "%ECHO_DETAILS%" == "1" ECHO Variables declared.

EXIT /B %ERRORLEVEL%
