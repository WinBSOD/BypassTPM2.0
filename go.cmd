@echo off
title BypassTPM2.0
color 2F
mode con: cols=56 lines=20

:: ��ʼ��ȡ����ԱȨ��
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
:: ��ɻ�ȡ

mkdir ��̬���ӿⱸ��
copy %SYSTEMDRIVE%\$WINDOWS.~BT\Sources\AppraiserRes.dll .\��̬���ӿⱸ��

del /f /s /q %SYSTEMDRIVE%\$WINDOWS.~BT\Sources\AppraiserRes.dll

copy  .\AppraiserRes.dll %SYSTEMDRIVE%\$WINDOWS.~BT\Sources\

@pause