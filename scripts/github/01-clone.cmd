@echo off
setlocal

where git >nul 2>&1
if errorlevel 1 (
    echo Git nao encontrado no PATH.
    exit /b 1
)

set "DEST=%~1"
if "%DEST%"=="" set "DEST=%USERPROFILE%\OneDev"

if exist "%DEST%\.git" (
    echo O repositorio ja existe em:
    echo %DEST%
    exit /b 0
)

echo Clonando em:
echo %DEST%
git clone https://github.com/lcscar/OneDev.git "%DEST%"

endlocal
