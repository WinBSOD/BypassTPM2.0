echo �뽫���ļ����ļ����ڿյ�AppraiserRes.dll�ļ�����ϵͳ�̸�Ŀ¼

cd %SYSTEMDRIVE%\
mkdir ��̬���ӿⱸ��
copy %SYSTEMDRIVE%\$WINDOWS.~BT\Sources\AppraiserRes.dll %SYSTEMDRIVE%\��̬���ӿⱸ��

del /f /s /q %SYSTEMDRIVE%\$WINDOWS.~BT\Sources\AppraiserRes.dll

copy  %SYSTEMDRIVE%\AppraiserRes.dll %SYSTEMDRIVE%\$WINDOWS.~BT\Sources\

echo ��Ҫ���Գ����������һ�м���@pause
