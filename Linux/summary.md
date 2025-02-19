# Key Concepts

1. alternatives to tee (writes to a stdout/file) ls -l | tee file.txt -a are :
    command | sudo dd status=none of=FILENAME
    command | sudo cp /dev/stdin FILENAME
    somecommand | tee >(othercommand)
2. How to use cheat.sh
 curl <http://cht.sh/:cht.sh> | sudo tee /usr/local/bin/cht.sh
 sudo chmod +x /usr/local/bin/cht.sh
 sudo apt-get install rlwrap xsel
 Ex: ```cht.sh ls```

3. bash - new shell execution to run a file
   source - same shell execution to run a file. usually to set env variables. source FILENAME [arguments]
   . FILENAME [arguments]
4. bashrc vs bash_profile vs .profile vs .bash_login vs etc/profile
   etc/profile --> .bash_profile(env variables setup)/.bash_login/.profile (present in home directory) (for interactive login shell)--> .bashrc (interactive non login shell) (contains aliases/bash functions)
   typical .bash_profile

   ```if [ -f ~/.bashrc ];
      then 
         .  ~/.bashrc; # here . means source
      fi 
      PATH=$PATH:$HOME/bin export PATH```

## LINKS

1. <https://www.baeldung.com/linux/full_archive>
1. [Auth htpasswd](https://medium.com/@athulmve/basic-authentication-for-ingress-host-9abeef927902#:~:text=To%20add%20Basic%20Authentication%20to,user%20with%20your%20user%20name.)
1. [JQ Basics blog](https://earthly.dev/blog/jq-select/)
