#!/bin/bash
#Removing the .nanorc file
rm "$HOME/.nanorc"
#Removing the line from the .bashrc file
sed -i '/source ~\/.dotfiles\/etc\/bashrc.custom/d' "$HOME/.bashrc"
#Removoing the trash directory
rm -r "$HOME/.TRASH"
