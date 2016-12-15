@ECHO OFF

SET OPTION=%1
SET DONE=0
SET NGINX_DIR=E:\webserver\nginx-1.11.7

IF "%OPTION%"=="start" (
    CALL :do_start
    CALL :do_status
    SET DONE=2
)

IF "%OPTION%"=="stop" (
    CALL :do_stop
    CALL :do_status
    SET DONE=3
)

IF "%OPTION%"=="status" (
    CALL :do_status
    SET DONE=1
)

IF %DONE% equ 0 (echo "Invalid option %OPTION%")

EXIT /b 0

:do_status
    tasklist /fi "imagename eq nginx.exe"
    EXIT /B 0

:do_start
    ECHO Starting nginx
    pushd %NGINX_DIR%
    start /b nginx.exe 
    popd
    EXIT /B 0
    
:do_stop
    ECHO Stopping nginx
    pushd %NGINX_DIR%
    nginx.exe -s stop
    popd
    EXIT /B 0
