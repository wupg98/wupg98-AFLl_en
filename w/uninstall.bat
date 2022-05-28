@echo off
ctty nul
CD C:\wupg\w
DEL %windir%\Media\logoff.wav 
DEL %windir%\Media\logon.wav 
DEL %windir%\Media\Themic~1.wav
Copy C:\wupg\Recover\Logoff.wav %windir%\Media
Copy C:\wupg\Recover\Logon.wav %windir%\Media
Copy C:\wupg\Recover\logoff.wav %windir%\Media
Copy C:\wupg\Recover\logon.wav %windir%\Media
Copy C:\wupg\Recover\Themic~1.wav %windir%\Media
DEL  %windir%\System\Oeminfo.ini
DEL  %windir%\Icon_1.ico
DEL  %windir%\Icon_7.ico
DEL  %windir%\Icon_77.ico
DEL  %windir%\Icon_18.ico
DEL  %windir%\Icon_11.ico
Copy C:\wupg\Recover\Folder.htt %windir%\Web
Copy C:\wupg\Recover\folder.htt %windir%\Web
Copy C:\wupg\Recover\Folder.htt %windir%
Copy C:\wupg\Recover\folder.htt %windir%
Copy C:\wupg\Recover\Folder.htt %windir%\System
Copy C:\wupg\Recover\folder.htt %windir%\System
DEL  %windir%\Web\wvleft.gif
DEL  %windir%\Web\Wvleft.gif
Copy C:\wupg\Recover\wvleft.bmp %windir%\Web
Copy C:\wupg\Recover\Wvleft.bmp %windir%\Web
Copy C:\wupg\Recover\wulogo.gif %windir%\Web
Copy C:\wupg\Recover\Wulogo.gif %windir%\Web
Copy C:\wupg\Recover\Wvlogo.gif %windir%\Web
Copy C:\wupg\Recover\wvlogo.gif %windir%\Web
COPY C:\wupg\Recover\System.ini %windir%
DEL C:\Config.sys 
COPY C:\wupg\Recover\Config.sys C:\

DEL  %windir%\System\Oeminfo.ini
Copy C:\wupg\Recover\Oeminfo.ini %windir%\System
Copy C:\wupg\Recover\Defrag.exe %windir%

COPY C:\wupg\Recover\Cdfs.vxd %windir%\SYSTEM\IOSUBSYS

CD %windir%\msg
zclientm.exe /unregserver
CD %windir%
DEL %windir%\Desktop\Games.lnk
DEL %windir%\Desktop\MovieMk.exe.lnk 
deltree /y msg >NUL
deltree /y MovieMaker >NUL



ctty con
@echo Recover old icons 
CD C:\wupg\w
ctty nul


start/wait regedit /s uninstall.reg

Copy C:\wupg\Recover\Notepad.exe  %windir%
Copy C:\wupg\Recover\Regedit.exe  %windir%


CD %windir%\System

regsvr32 /u /s  %windir%\browseui.dll
regsvr32 /u /s  %windir%\browselc.dll

regsvr32 /i /s  %windir%\System\browseui.dll
regsvr32 /i /s  %windir%\System\browselc.dll

CD C:\wupg\w
if exist safefile.reg  CALL C:\wupg\w\run_recover.bat

CD C:\

echo ; >>Autoexec.bat
echo ; >>Autoexec.bat
echo if exist C:\wupg\w\a.bat CALL C:\wupg\w\a.bat>>Autoexec.bat

CD MYDOCU~1

attrib -r -s -a -h desktop.ini
attrib +s +a +h desktop.ini



CD C:\wupg\w





ctty con
@echo Upgrade Pack 98 !!!!!!+ was uninstalled successfully!
@echo The computer will restart now!
ctty nul
runonce.exe -q
ctty con
rundll32.exe shell32.dll,SHExitWindowsEx 2 