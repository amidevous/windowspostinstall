@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
sc config termservice start= auto
net /y stop termservice
net /y start termservice
netsh advfirewall firewall set rule group="Remote Desktop" new enable=Yes
netsh advfirewall firewall set rule group="Bureau à distance" new enable=Yes
powercfg /hibernate off
net accounts /maxpwage:unlimited
mkdir C:\ProgramData\
mkdir C:\ProgramData\Microsoft\
mkdir C:\ProgramData\Microsoft\Windows\
mkdir "C:\ProgramData\Microsoft\Windows\Start Menu\"
mkdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\"
mkdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\"
copy "%WINDIR%\Setup\Scripts\SetupComplete2.cmd" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\SetupComplete2.cmd"
regedit /S "%WINDIR%\Setup\Files\UAC0.reg"
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /f /v EditionID /d Professional 1>nul
cscript C:\Windows\System32\slmgr.vbs /ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
cscript C:\Windows\System32\slmgr.vbs /skms kms9.msguides.com
cscript C:\Windows\System32\slmgr.vbs /ato
if %PROCESSOR_ARCHITECTURE%==x86 (
  rem 32 bit
  rem fix windows update
  wusa.exe "%WINDIR%\Setup\Updates\windows6.1-kb3138612-x86_6e90531daffc13bc4e92ecea890e501e807c621f.msu" /quiet /norestart
  rem powershell
  rem wusa.exe "%WINDIR%\Setup\Updates\Win7-KB3191566-x86.msu" /quiet /norestart
) else (
  rem 64 bit
  rem fix windows update
  wusa.exe "%WINDIR%\Setup\Updates\windows6.1-kb3138612-x64_f7b1de8ea7cf8faf57b0138c4068d2e899e2b266.msu" /quiet /norestart
  rem powershell
  rem wusa.exe "%WINDIR%\Setup\Updates\Win7AndW2K8R2-KB3191566-x64.msu" /quiet /norestart
)
rd /q /s "%WINDIR%\Setup\Updates"
del /q /f "%0"
