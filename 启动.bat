# 自动以管理员身份运行

%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("1.bat","/c %~s0 ::","","runas",1)(window.close)&&exit cd /d "%~dp0"

