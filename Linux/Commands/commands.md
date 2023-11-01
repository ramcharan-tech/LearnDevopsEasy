1. ```lsb_release -a``` to know the current version in ubuntu.
    Alternative: ```cat /etc/os-release```
2. ```wc -l``` for word count of no of lines.
3. ```apt list --manual-installed=true | grep -v "Listing" | wc -l```
    TO get the number of installed programs using apt
    Alternative: ```apt-mark showmanual | wc -l```
4. [global / regular expression search / and print] grep -P '"[^"]+lazy[^"]+"' sample.txt  --> to get string inside a substring using perl-compatible [^"]+ which is not doublequote
   LookBehind assertion: grep -oP '"a \Klazy[^"]+"' sample.txt -->exclude the preceding pattern from the match
   LookAhead assertion: grep -oP '"[^"]+lazy (?=dog")' sample.txt --> exclude succeeding pattern from the match
5. sudo apt-get update && sudo apt-get install ca-certificates --> to install latest certificates 
6. remove current executable and link it to other
   sudo rm /usr/local/bin/<executable_name>
   ln -s /new/shared/location/<executable_name> /usr/local/bin/<executable_name>
7. ls -l --> to check the permissions