echo 正在获取管理员权限

%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("%SYSTEMDRIVE%\1.bat","/c %~s0 ::","","runas",1)(window.close)&&exit cd /d "%~dp0"

echo 请将此文件放在系统启动文件夹