#!/bin/sh

FOLDER="Sublime Text";
path=$(find $HOME/Library/Application\ Support -type d -name "$FOLDER" 2>/dev/null);
src=$path/Packages/User;
dest=".";
rsync -azvq "$src" "$dest" --exclude .git* --exclude .venv --exclude .DS_Store;
