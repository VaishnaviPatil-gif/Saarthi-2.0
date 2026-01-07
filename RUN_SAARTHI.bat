@echo off
title Saarthi AI - Mental Health Support
color 0A
cls
echo.
echo ========================================
echo    SAARTHI AI - Mental Health Support
echo ========================================
echo.
echo Starting server...
echo.

cd /d "%~dp0server"

REM Check if Node.js is accessible
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    REM Node not in PATH, try common location
    if exist "C:\Program Files\nodejs\node.exe" (
        "C:\Program Files\nodejs\node.exe" index.js
    ) else if exist "C:\Program Files (x86)\nodejs\node.exe" (
        "C:\Program Files (x86)\nodejs\node.exe" index.js
    ) else (
        echo ERROR: Node.js not found!
        echo Please install Node.js from https://nodejs.org
        pause
        exit /b 1
    )
) else (
    node index.js
)
