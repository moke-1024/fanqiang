@Echo Off
Title ��GitHub�ƶ˸��� DAZE ��������
cd /d %~dp0
..\..\wget --ca-certificate=ca-bundle.crt -c https://cdn.jsdelivr.net/gh/Alvin9999/PAC@latest/DAZE/daze.ini

if exist daze.ini goto startcopy
echo ip����ʧ�ܣ�������ip_2����
pause
exit
:startcopy

del "..\daze.bat_backup"
ren "..\daze.bat"  daze.bat_backup
copy /y "%~dp0daze.ini" ..\daze.bat
del "%~dp0daze.ini"
ECHO.&ECHO.�Ѹ���������¿���DAZE����,�밴�س�����ո���������� &PAUSE >NUL 2>NUL
exit