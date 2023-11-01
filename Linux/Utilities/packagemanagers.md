# Package Managers

|Linux Distribution| Package Manager | Command-Line Tools |
| --| --| --|
|Debian, Ubuntu| DPKG|apt-get, apt-cache, apt,snapd,aptitude|
|Arch Linux, Frugalware, DeLi | Linux Pacman| pacman|
|Alpine Linux| APK| apk|
|Red Hat, Fedora|RPM|yum, dnf|
|Puppy Linux |PETget| petget|
|Sabayon Linux |Entropy |equo|
|Pisi Linux|PISI|pisi|
|Slackware |slackpkg| slackpkg|
|Zenwalk |netpkg |netpkg|

1. while apt provides a simplified UI interface with the most commonly used package management commands with progress bar, apt-get offers more granular control and is better suited for scripting purposes
2. When you run a command like apt update or apt-get update, your system downloads the most recent package information from the sources listed in the /etc/apt/sources.list file and in the /etc/apt/sources.list.d directory. This ensures that your local package database is up to date with the latest changes made in the repositories.This is an important step before installing new software or upgrading existing software, as it allows your system to be aware of the latest versions of packages and their dependencies
3. snap -> ubuntu, debian, fedora, centos,arch linux, openSUSE, Manjaro
4. s means for system administrators (super user(root)) mainly bin vs sbin

   The Linux file system follows a tree-like hierarchical structure starting at the root⁴. It consists of directories, sub-directories, and data files⁴. This structure follows a standard layout recommended by the Filesystem Hierarchy Standard (FHS), which is a standard maintained by the Linux Foundation³⁴. Here's a brief overview of some key directories:

1. **/**: The root directory. Everything, all the files and directories, in Linux are located under 'root' represented by '/'
2. **/bin**: Contains the executable files of many basic shell commands like ls, cp, cd etc. useful at early boot stage for single usr mode(before /usr partition is mounted)
3. **/usr/bin**: general system-wide binaries. installed programs using package management systems.
4. **/usr/local/bin** -> not managed by system packages.  while programs installed after OS installation are generally stored here when tried compile and install software from source (other than package manager)
5. s means for system administrators (super user(root)) mainly bin vs sbin -> For your own user ID scripts put them in /home/YOUR_NAME/bin. Keep in mind you have to create this directory first and relaunch the terminal to get the path automatically setup by ~/.profile
6. **/boot**: Contains all the boot-related information files and folders such as conf, grub

7. **/dev**: Contains special files, including those relating to the devices².

8. **/etc**: Contains the core configuration files of the system, used primarily by the administrator and services².

9. **/home**: The home directory. It is the default current directory.

10. **/lib**: Contains kernel modules and a shared library.directory contains shared binary files which are shared by /bin and /sbin.a binary file is a file of computer-readable code in binary format, that control the CPU and processor directly with bits, filenames are ld* or lib*.so.* /lib compiled to machine code  and contains kernel modules as well
11. **/usr/lib** contains non-essential binaries used by all users and binaries used for **network services**.
12. **/var/lib** contains files which preserve information about **the state of running programs** or instances of programs

13. **/media**: Contains subdirectories where removal media devices are inserted. created automatically

14. **/mnt**: Contains temporary mount directories for mounting the file system.created manually.

15. **/opt**: Optional or third-party software. (third-party software may be also present in usr/bin or usr/local/bin)

16. **/proc**: A virtual and pseudo-file system to contains info about the running processes with a specific process ID or PID. control and information center for kernel. expiration-> created on the fly when system boots and is dissolved at the time of sys shutdown.As for expiration time, an open file descriptor to /proc/<pid> or to any of its contained files or subdirectories does not prevent <pid> from being reused for some other process in the event that <pid> exits. This suggests that the files in /proc/<pid> are removed when the process exits. However, other files in /proc, such as /proc/uptime, persist as long as the system is running

17. **/run**: Stores volatile runtime data.

18. **/sbin**: Binary executable programs for an administrator.

19. **/srv**: Contains server-specific and server-related files.

20. **/sys**: A virtual file system for modern Linux distributions to store and allows modification of the devices connected to the system.

21. **/tmp**: Temporary space, typically cleared on reboot.

22. **/usr**: User related programs
23. **/var**: Log files. contains files which may change in size such as spool. may have policies to delete or rotate log files after certain size or age.

(1) Linux File System 101 - Medium. https://medium.com/swlh/linux-file-system-101-894141449257.
(2) Linux File Hierarchy Structure - GeeksforGeeks. https://www.geeksforgeeks.org/linux-file-hierarchy-structure/.
(3) Linux Directory Structure Explained for Beginners. https://linuxhandbook.com/linux-directory-structure/.
(4) Unix File System - GeeksforGeeks. https://www.geeksforgeeks.org/unix-file-system/.
(5) Linux Directory Structure - GeeksforGeeks. https://www.geeksforgeeks.org/linux-directory-structure/.
