echo 请将此文件和文件夹内空的AppraiserRes.dll文件放在系统盘根目录

cd %SYSTEMDRIVE%\
mkdir 动态链接库备份
copy %SYSTEMDRIVE%\$WINDOWS.~BT\Sources\AppraiserRes.dll %SYSTEMDRIVE%\动态链接库备份

del /f /s /q %SYSTEMDRIVE%\$WINDOWS.~BT\Sources\AppraiserRes.dll

copy  %SYSTEMDRIVE%\AppraiserRes.dll %SYSTEMDRIVE%\$WINDOWS.~BT\Sources\

echo 若要调试程序，请在最后一行加上@pause
