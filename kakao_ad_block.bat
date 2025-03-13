@echo off
echo Admin privileges required. Checking...
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo This script requires administrator privileges.
    echo Please run as administrator.
    pause
    exit /b
)

echo Blocking KakaoTalk Ads...
set HOSTS_FILE=C:\Windows\System32\drivers\etc\hosts
set BLOCKED_HOST=127.0.0.1 display.ad.daum.net

rem # 기존 광고 차단 항목이 있는지 확인하고 추가
findstr /C:"%BLOCKED_HOST%" "%HOSTS_FILE%" >nul
if %errorLevel% neq 0 (
    echo %BLOCKED_HOST% >> "%HOSTS_FILE%"
    echo KakaoTalk ads have been blocked.
) else (
    echo KakaoTalk ads are already blocked.
)

echo Flushing DNS cache...
ipconfig /flushdns
echo Done.
pause
exit
