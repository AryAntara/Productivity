#!/bin/bash 

read -p "move the file from official repo ? " confirm
if [[ "$confirm" == "y" ]]
then
  cp -r ~/.local/share/kabmat .
  cp -r ~/.local/share/calcurse .
  git add .
  git commit -m "new files at $(date)"
  git push origin main
  exit 0
fi 

echo "cancel it"
