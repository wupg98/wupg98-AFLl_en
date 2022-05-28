@echo Remove directory "wupg" ?

@echo [y]  yes
@echo [n]  no

Choice /C:yn


ctty nul

If Errorlevel 2 goto n
If Errorlevel 1 goto y 


:n
set loe=no

:y

DEL C:\Explorer.exe


CD C:\

type Autoexec.bat | find /v /i "if exist C:\wupg\w\a.bat CALL C:\wupg\w\a.bat  > Autoexec.bat



ctty con
@echo Upgrade Pack 98 !!!!!!+ was uninstalled successfully!
ctty nul

If %loe%==no goto xx


DELTREE/Y C:\wupg
ctty con

:xx
exit