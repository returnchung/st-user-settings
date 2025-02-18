#!/bin/sh

WORKDIR=$(dirname $(realpath "$0"));
FOLDER="Sublime Text";
path=$(find $HOME/Library/Application\ Support -type d -name "$FOLDER" 2>/dev/null);
src=$path/Packages/User;
dest=$WORKDIR;
rsync -azvq "$src" "$dest" --exclude .git* --exclude .venv --exclude .DS_Store;
