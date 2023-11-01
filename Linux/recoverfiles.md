you can **recover** the file through the open file descriptor in /proc/[pid]/fd/[num]. You can use lsof | grep "/path/to/file"

Yes, there are a few alternatives to the `rm` command that allow you to restore deleted files:

1. **Trash-CLI**: This is a command-line interface to the trashcan⁴. It works similar to `rm`, but moves files to the trashcan instead of permanently deleting them. You can install it with `sudo apt-get install trash-cli` and then use `trash <file>` to move files to the trash

2. **Safe-rm**: This is a utility that aims to prevent accidental deletion of important files by replacing `/bin/rm` with a wrapper, which checks the given arguments against a configurable blacklist of files and directories that should never be removed⁴. You can use it just like `rm`.

3. **Rm-trash**: It puts the files into trash and handles duplications, permissions etc¹. You can find it on [GitHub](^1^).

4. **mv command**: You can move the file to `/tmp` directory using `mv filename /tmp` and it will be deleted at the next reboot².

5. **unlink command**: The `unlink` command is also part of POSIX: `unlink <file>`².

6. **shred command**: If you are able to run shred, then: `shred -u <file>`².
