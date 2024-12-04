#!/bin/bash
# if statment for if the system is linux
if [[ "$(uname)" != "Linux" ]]; then
	echo "Error: This script is only for Linux opperating systems" #This tells the user that this script is only for linux
	 exit 1
fi
# Doing an if statement to check if the directory is already created if not creating it
if [[ ! -d "$HOME/.TRASH" ]]; then
	mkdir "$HOME/.TRASH"
fi
# Another if statment to check if .nanorc exist and changing it's name to .bup_nanorc
# Also including a message saying that the name was changed
if [[ -f "$HOME/.nanorc" ]]; then
	mv "$HOME/.nanorc" "$HOME/.bup_nanorc"
	echo ".nanorc was changed to .bup_nanorc"
fi
# Redirecting the etc nanorc file to a file named .nanorc
cat /etc/nanorc > "$HOME/.nanorc"
# Adding  source
echo "source ~/.dotfiles/etc/bashrc_custom" >> "$HOME/.bashrc"

