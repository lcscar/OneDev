@echo off
setlocal

for %%I in ("%~dp0..\..") do set "REPO=%%~fI"
cd /d "%REPO%"

if not exist ".git" (
    echo Esta pasta nao e um repositorio Git.
    exit /b 1
)

git pull --ff-only

endlocal
