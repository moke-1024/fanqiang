@Echo Off
Title ��GitHub�ƶ˸��� DAZE ��������
cd /d %~dp0
..\..\wget --ca-certificate=ca-bundle.crt -c https://gitlab.com/free9999/ipupdate/-/raw/master/DAZE/daze.bat

if exist daze.bat goto startcopy
echo ip����ʧ�ܣ�������ip_2����
pause
exit
:startcopy

del "..\daze.bat_backup"
ren "..\daze.bat"  daze.bat_backup
copy /y "%~dp0daze.bat" ..\daze.bat
del "%~dp0daze.bat"
ECHO.&ECHO.�Ѹ���������¿���DAZE����,�밴�س�����ո���������� &PAUSE >NUL 2>NUL
exit