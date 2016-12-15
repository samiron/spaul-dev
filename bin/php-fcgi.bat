@ECHO OFF

SET PATH=%PHP_DIR%;%PATH%

SET OPTION=%1
SET DONE=0
SET PHP_DIR=E:\webserver\php5.5.12
SET IMAGE_NAME=php-cgi.exe
SET BIND=127.0.0.1:9123

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
    tasklist /fi "imagename eq %IMAGE_NAME%"
    EXIT /B 0

:do_start
    ECHO Starting PHP Fast CGI
    RunHiddenConsole %PHP_DIR%\%IMAGE_NAME% -b %BIND% -c %PHP_DIR%\php.ini
    EXIT /B 0
    
:do_stop
    ECHO Stopping PHP Fast CGI
    taskkill /IM %IMAGE_NAME%
    EXIT /B 0
