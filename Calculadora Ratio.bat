@echo off
set "HTML_PATH=file:///%~dp0calculadora.html"
set "WINDOW_PARAMS=--app="%HTML_PATH%" --window-size=680,912"

:: 1. Chequear si existe Brave
if exist "%ProgramFiles%\BraveSoftware\Brave-Browser\Application\brave.exe" (
    start "" "%ProgramFiles%\BraveSoftware\Brave-Browser\Application\brave.exe" %WINDOW_PARAMS%
    goto fin
)

:: 2. Chequear si existe Google Chrome
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
    start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" %WINDOW_PARAMS%
    goto fin
)

:: 3. Si no están los anteriores, usar Microsoft Edge (que siempre está)
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
    start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" %WINDOW_PARAMS%
    goto fin
)

:fin
exit