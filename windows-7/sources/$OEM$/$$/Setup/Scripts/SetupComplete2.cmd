@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
sc config termservice start= auto
net /y stop termservice
net /y start termservice
netsh advfirewall firewall set rule group="Remote Desktop" new enable=Yes
netsh advfirewall firewall set rule group="Bureau à distance" new enable=Yes
powercfg /hibernate off
net accounts /maxpwage:unlimited
regedit /S "%WINDIR%\Setup\Files\UAC2.reg"
rd /q /s "%WINDIR%\Setup\files"
shutdown /r /t 120
del /q /f "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\SetupComplete2.cmd"
