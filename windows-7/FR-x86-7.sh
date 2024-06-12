#!/bin/bash
#require sudo dnf -y install megatools wine winetricks
#require sudo apt-get -y install megatools wine winetricks
cd
rm -rf fr_windows_7_professional_with_sp1_x86_dvd_u_677092*
megatools dl 'http://mega.nz/#!XNxyCL4J!644FBOe8nvUWeCoEU0INsEYlCeqIhLgacXyKUKIBGJw'
mkdir -p fr_windows_7_professional_with_sp1_x86_dvd_u_677092
sudo mkdir -p /mnt
sudo mount fr_windows_7_professional_with_sp1_x86_dvd_u_677092.iso /mnt
sudo cp -av /mnt/. fr_windows_7_professional_with_sp1_x86_dvd_u_677092
sudo umount /mnt
export WINEARCH=win32 WINEPREFIX=$HOME/.dism
rm -rf $HOME/.dism
#sudo wiminfo fr_windows_7_professional_with_sp1_x86_dvd_u_677092/sources/install.wim
rm -f adksetup.exe
rm -f dism-offline.part1.exe
rm -f dism-offline.part2.rar
rm -f dism-offline.part3.rar
rm -f dism-offline.part4.rar
rm -f dism-offline.part5.rar
#original use with adksetup /quiet /layout c:\adkoffline https://download.microsoft.com/download/9/A/E/9AE69DD5-BA93-44E0-864E-180F5E700AB4/adk/adksetup.exe
wget https://github.com/amidevous/windowspostinstall/releases/download/0.0.1/dism-offline.part1.exe
wget https://github.com/amidevous/windowspostinstall/releases/download/0.0.1/dism-offline.part2.rar
wget https://github.com/amidevous/windowspostinstall/releases/download/0.0.1/dism-offline.part3.rar
wget https://github.com/amidevous/windowspostinstall/releases/download/0.0.1/dism-offline.part4.rar
wget https://github.com/amidevous/windowspostinstall/releases/download/0.0.1/dism-offline.part5.rar
sudo winetricks --self-update
winetricks -q dotnet452 wininet
winetricks win10
#auto use adksetup.exe /features OptionId.DeploymentTools /q
wine dism-offline.part1.exe
rm -f dism-offline.part1.exe
rm -f dism-offline.part2.rar
rm -f dism-offline.part3.rar
rm -f dism-offline.part4.rar
rm -f dism-offline.part5.rar
#wine "C:\windows\system32\dism.exe" /Get-ImageInfo /imagefile:"Z:\home\$USER\fr_windows_7_professional_with_sp1_x86_dvd_u_677092\sources\install.wim"
#dism /mount-image /imagefile:"C:\Users\%USERNAME%\Downloads\Windowsextractiso\sources\install.wim" /index:1 /mountdir:c:\Mount
#Dism /Image:C:\mount /Add-Package /PackagePath:"C:\Users\%USERNAME%\Downloads\windows10.0-kb4016635-x64_2b1b48aa6ec51c019187f15059b768b1638a21ab.msu"
#dism /unmount-image /mountdir:c:\mount /commit
