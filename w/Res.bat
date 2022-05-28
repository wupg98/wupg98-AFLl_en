@echo The computer will restart now!
ctty nul

COPY C:\wupg\w\Explorer.exe C:\

CALL C:\wupg\w\run_remover.bat
CD C:\wupg\w\
start/wait REGEDIT /s norun.reg


start/wait REGEDIT /s wmp11skin.reg



DEL C:\wupg\w\Install.bat
DEL C:\wupg\w\norun.reg

runonce.exe -q
rundll32.exe shell32.dll,SHExitWindowsEx 2 
ctty con
