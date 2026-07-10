@echo off
setlocal

for %%I in ("%~dp0..\..") do set "REPO=%%~fI"
cd /d "%REPO%"

if not exist ".git" (
    echo Esta pasta nao e um repositorio Git.
    exit /b 1
)

echo.
git status --short

echo.
set /p "MSG=Mensagem do commit: "
if "%MSG%"=="" (
    echo Mensagem vazia. Cancelado.
    exit /b 1
)

git add -A
git commit -m "%MSG%"
if errorlevel 1 exit /b 1

git push

endlocal
