wsl --install -d <distroname>
\\wsl.localhost\Ubuntu --> C:\Users\RA_Charan.Kette\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu_79rhkp1fndgsc\LocalState\ext4.vhdx

wsl -u root
passwd --> to reset password

In ubuntu shell check if root is  locked ```sudo passwd -S root```. If L then ```sudo passwd root``` -S means status
Username (root): The name of the user account.
Password Status (P): The status of the password. ‘P’ means the password is set and can be used1.
Last Password Change (10/13/2023): The date when the password was last changed.
Minimum Password Age (0): The minimum number of days required between password changes2.
Maximum Password Age (99999): The maximum number of days the password is valid2.
Password Warning Period (7): The number of days warning given before a password expires2.
Password Inactivity Period (-1): The number of days after a password expires until the account is permanently disabled2.

wsl --list --verbose
wsl --export Ubuntu20.04 c:\wsl-backup\Ubuntu2004.tar
wsl –import <Image Name you choose> <Directory to store and run the image> <Directory location of the exported .tar file>
wsl -d <WSL imported image name> --> to run specific wsl linux distribution
wsl --setdefault <DISTRO-NAME>
wsl --shutdown

<!-- ntoskrnl.exe (Windows NT Kernel) -->
