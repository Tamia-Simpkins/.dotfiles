# My Dotfiles

# Files in this respository

Information about the linux.sh Script:

1. Verifies the system is running linux and if not it prints an error message.
2. Creates a '.TRASH' directory in the users home directory.
3. Backs up the existing '.nanorc' file to the '.bup.nanorc' file.
4. Copies the content of '/etc/nanorc' to a new '.nanorc' file in the home directory.
5. Adds the line 'source ~/.dotfiles/etc/bashrc.custom' to the '.bashrc' file.

Information about the cleanup.sh Script:

1. Remove sthe '.nanorc' file.
2. Deletes the '.TRASH' directory in the home directory.
3. Removes the line 'source ~/.dotfiles/etc/bashrc.custom' from the .bashrc file.

Information about the Makefile:

1. Runs linux.sh.
2. Runs cleanup.sh.
