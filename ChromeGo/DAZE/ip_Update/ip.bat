@Echo Off
setlocal enableDelayedExpansion
Title ��GitHub�ƶ˸��� DAZE ��������
cd /d %~dp0

set filename=daze.bat
..\..\wget -t 3 --ca-certificate=ca-bundle.crt  https://killgcd.github.io/FirefoxFQ/FirefoxFQ/DAZE/daze.bat
rem ����ļ��Ƿ���ڣ�������������ʧ�ܣ����������سɹ�
if exist %filename% goto startcopy

set filename=daze.bat
echo download ip1 failed,try download ip2 ...
..\..\wget -t 1 --ca-certificate=ca-bundle.crt https://raw.githubusercontent.com/killgcd/FirefoxFQ/master/FirefoxFQ/DAZE/daze.bat
if exist %filename% goto startcopy

rem 2�����ض�ʧ�ܣ�����ʾ�û��������˳�
echo ip����ʧ�ܣ�������Ƿ�����лл����������kebi2014@gmail.com
pause
exit

:startcopy
del "..\daze.bat_backup"
ren "..\daze.bat"  daze.bat_backup
copy /y "%~dp0%filename%" ..\daze.bat
del "%~dp0%filename%"
ECHO.&ECHO.�Ѹ���������¿���DAZE����,�밴������˳�,����������. &PAUSE >NUL 2>NUL
exit