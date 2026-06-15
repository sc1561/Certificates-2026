@echo off
chcp 65001 > nul
title Uploading Certificates-2026 to GitHub

echo ============================================
echo   Certificates-2026 - GitHub Upload
echo ============================================
echo.

cd /d "%~dp0"

echo [1/5] Checking Git installation...
git --version
if errorlevel 1 (
    echo ERROR: Git is not installed or not in PATH.
    pause
    exit /b 1
)

echo.
echo [2/5] Initializing Git repository...
if not exist ".git" (
    git init
    echo Initialized new Git repository.
) else (
    echo Git repository already exists.
)

echo.
echo [3/5] Setting remote origin...
git remote remove origin 2>nul
git remote add origin https://github.com/sc1561/Certificates-2026.git
echo Remote set to: https://github.com/sc1561/Certificates-2026.git

echo.
echo [4/5] Adding all files...
git add .
git status

echo.
echo [5/5] Committing and pushing to main branch...
git commit -m "initial setup: certificates portal"
git branch -M main
git push -u origin main

echo.
echo ============================================
if errorlevel 1 (
    echo   PUSH FAILED - check credentials above
) else (
    echo   SUCCESS! Visit your site at:
    echo   https://sc1561.github.io/Certificates-2026/
)
echo ============================================
echo.
pause
