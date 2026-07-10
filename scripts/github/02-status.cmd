@echo off
setlocal

for %%I in ("%~dp0..\..") do set "REPO=%%~fI"
cd /d "%REPO%"

if not exist ".git" (
    echo Esta pasta nao e um repositorio Git.
    exit /b 1
)

echo.
echo Branch atual:
git branch --show-current

echo.
echo Status:
git status --short --branch

echo.
echo Ultimo commit:
git log -1 --oneline

echo.
echo Hash completo:
git rev-parse HEAD

endlocal
