@echo off
setlocal
cd /d "%~dp0"
title Animated Cursor Library - Sync to GitHub
powershell.exe -NoLogo -NoProfile -ExecutionPolicy Bypass -File "%~dp0SYNC-TO-GITHUB.ps1"
if errorlevel 1 (
  echo.
  echo Sync did not complete. Review the message above.
  echo.
  pause
  exit /b 1
)
echo.
echo Full cursor library pushed to GitHub.
pause
endlocal
