@echo off
setlocal

set "ONEDEV_HOME=%LOCALAPPDATA%\OneDev"

if not exist "%ONEDEV_HOME%\bin\server.bat" (
    echo OneDev ainda nao foi configurado.
    echo Execute primeiro: 01-configurar-e-iniciar.cmd
    exit /b 1
)

echo OneDev sera iniciado em:
echo http://localhost:6610
echo.
echo Para parar, pressione Ctrl+C nesta janela.

start "" "http://localhost:6610"
cd /d "%ONEDEV_HOME%"
call "%ONEDEV_HOME%\bin\server.bat" console

endlocal
