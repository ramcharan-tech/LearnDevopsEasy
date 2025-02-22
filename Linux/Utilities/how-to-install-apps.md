# installation types

## PACKAGE MANAGERS

1. APT
2. Snap
3. Flatpak
4. Homebrew --> /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
5. Conda
6. Yarn
7. Pip


1. curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
1. sudo apt install awscli

## source.list.d

``` bash
 /etc/apt/sources.list.d$
cat hashicorp.list
deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com jammy main
cat kubernetes.list
deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.32/deb/ /
```
# How to install from a tar.xz file
tar xvfJ tor-browser-linux-x86_64-13.0.5.tar.xz
sudo mv tor-browser /usr/local/share/
cd /usr/local/share/tor-browser/
./start-tor-browser.desktop --register-app

# APP Image
chmod +x <AppImage-file-name>
./<AppImage-file-name>

or

[Desktop Entry]
Encoding=UTF-8
Version=1.0
Type=Application
Terminal=false
Exec=/home/charan/Documents/KoodoReader/Koodo-Reader-1.5.1.AppImage %F
Name=KoodoReader
Icon=/home/charan/Documents/KoodoReader/koodoreader.png

move it to /usr/share/appliations/
sudo update-desktop-database


LIST OF APT : comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)


PPA's:
https://www.ubuntuupdates.org/ppas or https://launchpad.net/ubuntu/+search?text=
cd /etc/apt/sources.list.d/





### There are several ways to install software in Ubuntu:

1. Ubuntu Software Center: This is the simplest way to install software, as it has a handy graphical user interface that displays screenshots, space requirements, and even user reviews.

2. Advanced Package Tool (APT): APT is a command-line tool that you can use to install, upgrade, or remove software. You can use the apt-get install command followed by the package name to install software.

3. Synaptic Package Manager12: Synaptic is a GUI alternative to APT12. It lists packages that your computer knows of, and allows you to install those by clicking on them12.

4. Snap Store13: The Snap Store is a handy tool for finding and installing snap packages, which are quick and easy to install and come with all necessary dependencies13.

5. DEB Packages123: If you have a .deb package that you downloaded from the web, you can install it using the Ubuntu Software Center or the dpkg -i command followed by the .deb file name123.

6. Compiling from Source Code1: If the software you want to install is not available in the repositories or as a DEB package, you might need to compile it from source code1.

7. Adding Repositories to sources.list2: This is a way to add a PPA that may require a key2. This is the method for installing some proprietary apps like Google Chrome2.

8. Personal Package Archives (PPAs)2: PPAs are needed to update software2. They are generally what is used to install as well2.
