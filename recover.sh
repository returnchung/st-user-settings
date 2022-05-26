#!/bin/sh

FOLDER="Sublime Text";
path=$(find $HOME/Library/Application\ Support -type d -name "$FOLDER" 2>/dev/null);
dest=$path/Packages/;
src="./User";
rsync -azvq "$src" "$dest" --exclude .git* --exclude .venv --exclude .DS_Store;
