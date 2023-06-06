@echo off
title BypassTPM2.0
color 2F
mode con: cols=56 lines=20

:: 开始获取管理员权限
setlocal
set uac=~uac_permission_tmp_%random%
md "%SystemRoot%\system32\%uac%" 2>nul
if %errorlevel%==0 ( rd "%SystemRoot%\system32\%uac%" >nul 2>nul ) else (
    echo set uac = CreateObject^("Shell.Application"^)>"%temp%\%uac%.vbs"
    echo uac.ShellExecute "%~s0","","","runas",1 >>"%temp%\%uac%.vbs"
    echo WScript.Quit >>"%temp%\%uac%.vbs"
    "%temp%\%uac%.vbs" /f
    del /f /q "%temp%\%uac%.vbs" & exit )
endlocal
:: 完成获取

mkdir 动态链接库备份
copy %SYSTEMDRIVE%\$WINDOWS.~BT\Sources\AppraiserRes.dll .\动态链接库备份

del /f /s /q %SYSTEMDRIVE%\$WINDOWS.~BT\Sources\AppraiserRes.dll

copy  .\AppraiserRes.dll %SYSTEMDRIVE%\$WINDOWS.~BT\Sources\

@pause