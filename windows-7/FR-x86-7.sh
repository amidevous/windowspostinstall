#!/bin/bash
#require sudo dnf -y install megatools wine
#require sudo apt-get -y install megatools wine
cd
rm -rf fr_windows_7_professional_with_sp1_x86_dvd_u_677092*
megatools dl 'http://mega.nz/#!XNxyCL4J!644FBOe8nvUWeCoEU0INsEYlCeqIhLgacXyKUKIBGJw'
mkdir -p fr_windows_7_professional_with_sp1_x86_dvd_u_677092
sudo mkdir -p /mnt
sudo mount fr_windows_7_professional_with_sp1_x86_dvd_u_677092.iso /mnt
sudo cp -av /mnt/. fr_windows_7_professional_with_sp1_x86_dvd_u_677092
sudo umount /mnt
sudo wiminfo fr_windows_7_professional_with_sp1_x86_dvd_u_677092/sources/install.wim
#wine "C:\windows\system32\dism.exe" /Get-ImageInfo /imagefile:"Z:\home\$USER\fr_windows_7_professional_with_sp1_x86_dvd_u_677092\sources\install.wim"
#dism /mount-image /imagefile:"C:\Users\%USERNAME%\Downloads\Windowsextractiso\sources\install.wim" /index:1 /mountdir:c:\Mount
#Dism /Image:C:\mount /Add-Package /PackagePath:"C:\Users\%USERNAME%\Downloads\windows10.0-kb4016635-x64_2b1b48aa6ec51c019187f15059b768b1638a21ab.msu"
#dism /unmount-image /mountdir:c:\mount /commit
