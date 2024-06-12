@echo off
cscript C:\Windows\System32\slmgr.vbs /ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
cscript C:\Windows\System32\slmgr.vbs /skms kms9.msguides.com
cscript C:\Windows\System32\slmgr.vbs /ato
REM DISM.exe /Online /Add-Package /PackagePath:%WINDIR%\Setup\Files\Update\1\Windows6.1-KB3138612-x86.msu
rd /q /s "%WINDIR%\Setup\Files"
del /q /f "%0"
