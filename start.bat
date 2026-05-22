@echo off
setlocal
cd /d "%~dp0"

where node >nul 2>nul
if errorlevel 1 (
  echo Missing command: node
  echo Install Node.js first, then reopen this folder.
  pause
  exit /b 1
)

where npm >nul 2>nul
if errorlevel 1 (
  echo Missing command: npm
  echo Install Node.js first, then reopen this folder.
  pause
  exit /b 1
)

if not exist node_modules (
  echo Installing dependencies...
  call npm install
  if errorlevel 1 (
    pause
    exit /b 1
  )
)

echo Starting GPI 2.0...
echo Open http://127.0.0.1:8787 if the browser does not open automatically.
start "" "http://127.0.0.1:8787"
call npm run dev
