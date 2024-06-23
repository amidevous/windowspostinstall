#!/bin/bash
#require sudo dnf -y install megatools wine winetricks
#require sudo apt-get -y install megatools wine winetricks
read -r -e -p "Please Enter your admin password: " -i "yourpassword" adminpass
cd
echo $adminpass | sudo -S rm -rf *windows_7*
echo "Download Windows 7 32 bit iso French"
axel https://archive.org/download/windows_7_professional_with_sp1_original_latest_iso_multilanguage/fr_windows_7_professional_with_sp1_x86_dvd_u_677092.iso
echo "Download Windows 7 64 bit iso French"
axel https://archive.org/download/windows_7_professional_with_sp1_original_latest_iso_multilanguage/fr_windows_7_professional_with_sp1_x64_dvd_u_678724.iso
echo "Extract Windows 7 32 bit iso French"
mkdir -p fr_windows_7_professional_with_sp1_x86_dvd_u_677092
echo $adminpass | sudo -S mkdir -p /mnt
echo $adminpass | sudo -S mount fr_windows_7_professional_with_sp1_x86_dvd_u_677092.iso /mnt
cp -av /mnt/. fr_windows_7_professional_with_sp1_x86_dvd_u_677092
echo $adminpass | sudo -S umount /mnt
echo $adminpass | sudo -S chown -R $USER:$USER fr_windows_7_professional_with_sp1_x86_dvd_u_677092/
echo $adminpass | sudo -S chown -R $USER:$USER fr_windows_7_professional_with_sp1_x86_dvd_u_677092/*
echo $adminpass | sudo -S chown -R 777 fr_windows_7_professional_with_sp1_x86_dvd_u_677092/
echo $adminpass | sudo -S chown -R 777 fr_windows_7_professional_with_sp1_x86_dvd_u_677092/*
echo "Extract Windows 7 64 bit iso French"
mkdir -p fr_windows_7_professional_with_sp1_x64_dvd_u_678724
echo $adminpass | sudo -S mkdir -p /mnt
echo $adminpass | sudo -S mount fr_windows_7_professional_with_sp1_x64_dvd_u_678724.iso /mnt
p -av /mnt/. fr_windows_7_professional_with_sp1_x64_dvd_u_678724
echo $adminpass | sudo -S umount /mnt
echo $adminpass | sudo -S chown -R $USER:$USER fr_windows_7_professional_with_sp1_x64_dvd_u_678724/
echo $adminpass | sudo -S chown -R $USER:$USER fr_windows_7_professional_with_sp1_x64_dvd_u_678724/*
echo $adminpass | sudo -S chown -R 777 fr_windows_7_professional_with_sp1_x86_dvd_u_677092/
echo $adminpass | sudo -S chown -R 777 fr_windows_7_professional_with_sp1_x86_dvd_u_677092/*
mkdir -p "fr_windows_7_professional_with_sp1_x86_dvd_u_677092/sources/\$OEM\$/\$\$/Setup/Scripts\"
mkdir -p "fr_windows_7_professional_with_sp1_x86_dvd_u_677092/sources/\$OEM\$/\$\$/Setup/Files\"
mkdir -p "fr_windows_7_professional_with_sp1_x86_dvd_u_677092/sources/\$OEM\$/\$\$/Setup/Updates\"
mkdir -p "fr_windows_7_professional_with_sp1_x64_dvd_u_678724/sources/\$OEM\$/\$\$/Setup/Scripts\"
mkdir -p "fr_windows_7_professional_with_sp1_x64_dvd_u_678724/sources/\$OEM\$/\$\$/Setup/Files\"
mkdir -p "fr_windows_7_professional_with_sp1_x64_dvd_u_678724/sources/\$OEM\$/\$\$/Setup/Updates\"
rem wget "https://catalog.s.download.windowsupdate.com/d/msdownload/update/software/updt/2016/02/windows6.1-kb3138612-x86_6e90531daffc13bc4e92ecea890e501e807c621f.msu" -O "fr_windows_7_professional_with_sp1_x86_dvd_u_677092/sources/\$OEM\$/\$\$/Setup/Updates\windows6.1-kb3138612-x86_6e90531daffc13bc4e92ecea890e501e807c621f.msu"
wget "https://github.com/amidevous/windowspostinstall/releases/download/0.0.1/windows6.1-kb3138612-x86_6e90531daffc13bc4e92ecea890e501e807c621f.msu" -O "fr_windows_7_professional_with_sp1_x86_dvd_u_677092/sources/\$OEM\$/\$\$/Setup/Updates\windows6.1-kb3138612-x86_6e90531daffc13bc4e92ecea890e501e807c621f.msu"
rem wget "https://catalog.s.download.windowsupdate.com/d/msdownload/update/software/updt/2016/02/windows6.1-kb3138612-x64_f7b1de8ea7cf8faf57b0138c4068d2e899e2b266.msu" -O "fr_windows_7_professional_with_sp1_x64_dvd_u_678724/sources/\$OEM\$/\$\$/Setup/Updates\windows6.1-kb3138612-x64_f7b1de8ea7cf8faf57b0138c4068d2e899e2b266.msu"
wget "https://github.com/amidevous/windowspostinstall/releases/download/0.0.1/windows6.1-kb3138612-x86_6e90531daffc13bc4e92ecea890e501e807c621f.msu" -O "fr_windows_7_professional_with_sp1_x64_dvd_u_678724/sources/\$OEM\$/\$\$/Setup/Updates\windows6.1-kb3138612-x64_f7b1de8ea7cf8faf57b0138c4068d2e899e2b266.msu"



wget "https://github.com/amidevous/windowspostinstall/raw/master/windows-7/sources/$OEM$/$$/Setup/Files/UAC0.reg" -O "fr_windows_7_professional_with_sp1_x86_dvd_u_677092/sources/\$OEM\$/\$\$/Setup/Updates\windows6.1-kb3138612-x86_6e90531daffc13bc4e92ecea890e501e807c621f.msu"
wget "https://github.com/amidevous/windowspostinstall/raw/master/windows-7/sources/$OEM$/$$/Setup/Files/UAC0.reg" -O "fr_windows_7_professional_with_sp1_x64_dvd_u_678724/sources/\$OEM\$/\$\$/Setup/Updates\windows6.1-kb3138612-x64_f7b1de8ea7cf8faf57b0138c4068d2e899e2b266.msu"











echo $adminpass | sudo -S rm -f fr_windows_7_professional_with_sp1_x86_dvd_u_677092.iso fr_windows_7_professional_with_sp1_x64_dvd_u_678724.iso




export WINEARCH=win32 WINEPREFIX=$HOME/.dism
echo $adminpass | sudo -S rm -rf $HOME/.dism
echo $adminpass | sudo -S rm -f dism.zip
echo $adminpass | sudo -S winetricks --self-update
WINEARCH=win32 WINEPREFIX=$HOME/.dism winetricks -q dotnet452 wininet
WINEARCH=win32 WINEPREFIX=$HOME/.dism winecfg -v win10
wget https://github.com/amidevous/windowspostinstall/releases/download/0.0.1/dism.zip
unzip dism.zip -d $HOME/.dism/drive_c/
WINEARCH=win32 WINEPREFIX=$HOME/.dism wine adkoffline.part1.exe
rm -f adkoffline.part1.exe
rm -f adkoffline.part2.rar
rm -f adkoffline.part3.rar
rm -f adkoffline.part4.rar
rm -f adkoffline.part5.rar
#mkdir -p /home/andy/.dism/bin/
#cp -R "/home/andy/.dism/drive_c/Program Files/Windows Kits/10/Assessment and Deployment Kit/Deployment Tools/x86/DISM/"* /home/$USER/.dism/bin/
#wine "Z:\home\%USERNAME%\.dism\bin\dism.exe" /Get-ImageInfo /imagefile:"Z:\home\$USER\fr_windows_7_professional_with_sp1_x86_dvd_u_677092\sources\install.wim"
WINEARCH=win32 WINEPREFIX=$HOME/.dism wine "C:\dism\x86\dism.exe" /Get-ImageInfo /imagefile:"Z:\home\$USER\fr_windows_7_professional_with_sp1_x86_dvd_u_677092\sources\install.wim"
#dism /mount-image /imagefile:"C:\Users\%USERNAME%\Downloads\Windowsextractiso\sources\install.wim" /index:1 /mountdir:c:\Mount
#Dism /Image:C:\mount /Add-Package /PackagePath:"C:\Users\%USERNAME%\Downloads\windows10.0-kb4016635-x64_2b1b48aa6ec51c019187f15059b768b1638a21ab.msu"
#dism /unmount-image /mountdir:c:\mount /commit














