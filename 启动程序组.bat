echo ���ڻ�ȡ����ԱȨ��

%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("%SYSTEMDRIVE%\1.bat","/c %~s0 ::","","runas",1)(window.close)&&exit cd /d "%~dp0"

echo �뽫���ļ�����ϵͳ�����ļ���