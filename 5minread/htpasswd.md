# htpasswd Summary

## Overview

`htpasswd` is a command-line tool used to create and manage password files for **Basic Authentication** in **Apache, NGINX, and other web servers**.

## Usage

### Create a new password file

```sh
htpasswd -c /etc/nginx/.htpasswd username
htpasswd /etc/nginx/.htpasswd anotheruser
htpasswd -D /etc/nginx/.htpasswd username # Delete a user:
```

Hashing Algorithms
By default, htpasswd uses bcrypt, but other options include:

-B → Bcrypt (default, strongest) \
-C → MD5 (less secure) \
-d → Crypt (weak, not recommended)\
-s → SHA-1 (deprecated)

### Security Best Practices

Use bcrypt (-B) for strong password encryption.\
Restrict access to password files (chmod 600).\
Always use HTTPS to protect credentials in transit.