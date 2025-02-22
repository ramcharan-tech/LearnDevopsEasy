PWD
pwd
cat > token
cd usr/local
cd /usr/local
ls
cd bin
cd ..
cd sbin
cd src
ls -df
df
ls | grep code
ls | grep vsc
ls | grep visual
code .
ps
which code
cd snap
which snap
cd /snap/bin/code
cd /snap/bin
cd /
cd snap/
+
history
cat /etc/os-release 
shutdown
power off
poweroff
ifconfig
ipconfig
if config
sudo apt install net-tools
ifconfig |grep wlp2s0
ifconfig |grep wlp2s0 | grep inet
hostname -I
ip address
sudo systemctl enable --now sshd
sudo systemctl start sshd
sudo apt install openssh
sudo apt search openssh
sudo apt install openssh-server
sudo systemctl enable sshd
pid
pidof
ps -a
reboot
htop
top
free
free -H
free -h
upower -e
acpi -V
upower -h
upower -i /org/freedesktop/Upower/devices/battery_BAT0
upower -i /org/freedesktop/Upower/devices/DisplayDevice
cd /org
whichis org
find / --name battery_BAT0
find / -h
find / --help
find -H
clear
man find
find / --name 'battery_BAT0'
find / -name 'battery_BAT0'
find / -name battery_BAT0
find / -name battery
sudo find / -name battery
cat /sys/module/battery/
cd /sys/module/battery/ && ls
cat uevent 
sudo cat uevent
su -
sudo spt install acpi
sudo apt install acpi
exit
sudo systemctl is-enabled sshd
sudo systemctl status sshd
cat /etc/sudoers
sudo cat /etc/sudoers
sudo -i -U charan
sudo -l -U charan
sudo etc/passwd
sudo cat  etc/passwd
sudo cat  /etc/passwd
getent group sudo
find / -name sudoers
sudo find / -name sudoers
find . -name documents
find . -name d*
apropos foc
gnome-power-statistics 
upower
upower --help
upower -i
apt search --names-only top
df -h
df -ah
join me -sr
join me
join -h
join --help
join me -m
dmidecode 
sudo dmidecode 
uname -a
lsb_release 
lsb_release -a
find / -name sources.list
sudo find / -name sources.list
sudo cat /etc/apt/sources.list
sudo cd /etc/grub
cd /etc
ls | grep grub
vim grub.d
nano grub.d
cd default/
vim grub
sudo nano grub
less grub
cat grub
sudo update-grub
nano grub
grep -r "GRUB_TIMEOUT" /etc/default/
grep -r GRUB_TIMEOUT /etc/default/
sudo nano /etc/default/grub
cat > koodoreader.desktop
nano koodoreader.desktop 
./Koodo-Reader-1.5.1.AppImage --register-desktop-file
./Koodo-Reader-1.5.1.AppImage -register-desktop-file
sudo visudo
su root
sudo passwd root
sudo passwd -l root
cat /etc/passwd
apropos bat
ps | grep ssh
ps | grep ss
ps | grep s
ps -a | grep ssh
sshd status
sudo apt install xrdp
sudo ufw --help
ufw status
sudo ufw status
sudo ufw enable 
sudo ufw allow 3389
sudo ufw app list
sudo ufw status verbose
systemctl status xrdp.service 
systemctl status sshd
systemctl status xrdp
sudo acpi -V
sudo apt install powertop
powertop
sudo powertop
POWERTOP
sudo apt install artha
artha -h
artha --help
whichis artha
whereis artha
cd /usr/share/artha/
less gui.glade 
cat gui.glade | grep alacrity
cd /usr/bin/artha
cd /usr/bin/
less artha
grep -r alacrity /usr/bin
apt search --names-only calibre
apt search --names-only koodo
cd /home
cd charan/
ls -a
cd .config/
less artha.log
cd koodo-reader/
cd uploads/
cd data/
cd book/
less 1700687516937 
cd /Home/Documents
cp /home/charan/Documents/KoodoReader/koodoreader.desktop /usr/share/applications/
sudo cp /home/charan/Documents/KoodoReader/koodoreader.desktop /usr/share/applications/
sudo nano /usr/share/applications/koodoreader.desktop 
sudo update-desktop-database 
sudo gnome-power-statistics 
sudo update-desktop-database
history | grep database
history -253
history --help
history > ./Documents/history_backup_0
fc -l -n
fc -l -n 1
history -w /dev/stdout | awk '!a[$0]++' > ./Documents/history_backup_0
ifconfig 
sudo nano /etc/systemd/logind.conf 
sudo systemctl restart systemd-logind.service 
sudo nano /etc/gdm3/custom.conf 
ls /mnt
sudo lshw
sudo lshw > pcinfo
sudo pvcreate /dev/sda1
sudo mount -t ntfs-3g /dev/sda1 /mnt
sudo umount /dev/sda1
sudo fdisk /dev/sda
cd /mnt/Backup_Harddisk/
sudo pvcreate /dev/sda2
sudo vgscan
sudo vgscan --mknodes
sudo lvdisplay 
ls -l /dev/vgubuntu/
sudo mkdir -vp /mnt/ubuntu/home
sudo mount /dev/sda1 /mnt/ubuntu/home
sudo mount /dev/sda1 /mnt/ubuntu/
ls /mnt/ubuntu
fuser
fuser -ml
fuser -l
fuser -m
fuser -m /mnt
fuser -M /mnt
sudo parted -l
sudo mount -t ntfs-3g -o remove_hiberfile /dev/sda1 /mnt/Ubuntu
sudo mkdir -vp /mnt/ubuntu/
sudo mount -t ntfs-3g -o remove_hiberfile /dev/sda1 /mnt/ubuntu/
sudo vgchange -ay vgubuntu
sudo lvs
sudo mount /dev/vgubuntu/sda1 /mnt/ubuntu/ -o ro,user
ls /dev/vgubuntu/
sudo lvmdiskscan 
cd Textfiles/
cat > diskcmd
less diskcmd 
fdisk -l
sudo fdisk -l
pvscan
sudo mkfs.ext4 /dev/sda1
lsblk
sudostty -echoctl
sudo stty -echoctl
reset
cat diskcmd 
stty -echoctl
tor-browser
cd /dev/mapper/
ls -lh
ls -sh
cd vgubuntu-root
cd /home/charan/Documents/Textfiles/
cat > howtoinstall
tar xzf tor-0.4.3.6.tar.gz;
tar xzf tor-browser-linux-x86_64-13.0.5.tar.xz;
tar xvfJ tor-browser-linux-x86_64-13.0.5.tar.xz;
cd tor-browser/
cd..
ls /usr/local/share/
sudo mv tor-browser /usr/local/share/
cd /usr/local/share/tor-browser/
./start-tor-browser.desktop --register-app
sudo apt update && sudo apt upgrade
python3 --version
sudo apt install flatpak
flatpak update
cd /usr/bin
sudo find /usr/bin/ -name sources
$env
printenv
cat > tempflatpak
echo $PATH
set term=ansi
[A
screen
pvcreate /dev/sda1
vgscan
sudo vgextend vgubuntu /dev/sda1
sudo vgdisplay 
sudo lvscan
sudo 
lvcreate -L 10G vgubuntu
lvcreate -L 832G vgubuntu
sudo lvcreate -L 832G vgubuntu
sudo lvcreate -n home -L 831.5G vgubuntu
sudo lvscan 
sudo mkfs.ext4 /dev/mapper/vgubuntu-home
sudo e2label /dev/mapper/vgubuntu-home vgubuntu-home-fs
parted -l
man parted 
sudo pvscan
sudo e2label /dev/mapper/vgubuntu-home homefs
sudo chmod 777 /dev/mapper/vgubuntu-home
sudo mkdir /mnt/home
sudo mount /dev/mapper/vgubuntu-home /mnt/home
sudo chmod 777 /mnt/home
neofetch
sudo install htop
sudo apt install htop
apt list
flatpak remotes --show-details 
flatpak remote-add --if-not-exists gnome https://sdk.gnome.org/gnome.flatpakrepo
history -w /dev/stdout | awk '!a[$0]++' > ./Documents/history_backup_1
