@echo off
setlocal
echo HDRcade PZ B42 Map Cleaner - Localhost Runner
echo ------------------------------------------------
echo Serving current folder at http://localhost:8000
echo Close this window to stop.
echo.
where py >nul 2>nul
if %ERRORLEVEL%==0 (
  py -3 -m http.server 8000
) else (
  python -m http.server 8000
)
