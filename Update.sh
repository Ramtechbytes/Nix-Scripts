#!/bin/bash


#1 - Rebuild the system
sudo nixos-rebuild switch

#2 - Change directory
cd ./.dotfiles

#3 -  Commit Changes
echo "Input Message: "
read MESSAGE

echo "Branch: "
read BRANCH

git add -A
git commit -m "$MESSAGE"
git push origin "$BRANCH"

alias Update="bash ./Scripts/Update.sh"


