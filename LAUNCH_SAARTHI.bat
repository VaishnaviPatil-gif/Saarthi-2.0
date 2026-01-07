@echo off
REM ========================================
REM  Saarthi AI - One-Click Launcher
REM ========================================

cd /d "%~dp0"

REM Start server silently and open browser
start /min "" RUN_SAARTHI.bat

REM Wait for server to start
timeout /t 3 /nobreak >nul

REM Open Saarthi in browser
start "" Saarthi.html

echo.
echo ========================================
echo  Saarthi AI is now running!
echo ========================================
echo.
echo  Your browser should open automatically.
echo  Keep this window open while using Saarthi.
echo  
echo  To stop, close this window.
echo ========================================
echo.
pause
