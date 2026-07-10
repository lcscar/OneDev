@echo off
setlocal

for %%I in ("%~dp0..\..") do set "SOURCE=%%~fI"
set "ONEDEV_HOME=%LOCALAPPDATA%\OneDev"

where java >nul 2>&1
if errorlevel 1 (
    echo Java nao encontrado no PATH.
    echo Instale ou configure Java 17 ou superior e tente novamente.
    exit /b 1
)

java -version

echo.
if not exist "%ONEDEV_HOME%\bin\server.bat" (
    echo Copiando OneDev para:
    echo %ONEDEV_HOME%

    mkdir "%ONEDEV_HOME%" 2>nul
    robocopy "%SOURCE%" "%ONEDEV_HOME%" /E /XD ".git" "scripts" /R:2 /W:1
    if errorlevel 8 (
        echo Falha ao copiar os arquivos.
        exit /b 1
    )

    (
        echo http_host=127.0.0.1
        echo http_port=6610
        echo # ssh_port=6611
        echo cluster_port=5710
    ) > "%ONEDEV_HOME%\conf\server.properties"

    findstr /v /c:"to desired java executable" "%ONEDEV_HOME%\conf\wrapper.conf" > "%ONEDEV_HOME%\conf\wrapper.tmp"
    move /y "%ONEDEV_HOME%\conf\wrapper.tmp" "%ONEDEV_HOME%\conf\wrapper.conf" >nul
)

echo.
echo OneDev sera iniciado em:
echo http://localhost:6610
echo.
echo Para parar, pressione Ctrl+C nesta janela.

start "" "http://localhost:6610"
cd /d "%ONEDEV_HOME%"
call "%ONEDEV_HOME%\bin\server.bat" console

endlocal
