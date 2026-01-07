@echo off
echo ================================
echo   Saarthi AI Mental Health
echo   Starting System...
echo ================================
echo.

REM Start the server in a new window
echo [1/2] Starting AI Server...
start "Saarthi AI Server" "%~dp0server\start-server.bat"

REM Wait a moment for server to start
timeout /t 3 /nobreak >nul

REM Open the website in default browser
echo [2/2] Opening Website...
start "" "%~dp0Saarthi.html"

echo.
echo ================================
echo   Saarthi is Ready!
echo ================================
echo.
echo The server window will stay open.
echo Keep it running while using the chatbot.
echo.
echo Close this window if you want to stop the server.
echo.
pause
