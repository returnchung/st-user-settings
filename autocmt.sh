#!/bin/sh

WORKDIR=$(dirname $(realpath "$0"));
cd $WORKDIR;

./sync.sh;

any_chg=$(git diff | grep 'diff --git');
any_untracked_files=$(git ls-files --others --exclude-standard);
DATE=`date +%Y-%m-%dT%H:%M:%S`;
if [ ! -z "$any_chg" ] || [ ! -z "$any_untracked_files" ];
then
    git add . ;
    git commit -m "feat: autocmt on $DATE";
    git push origin;
    echo "[$DATE] Autocommit";
else
    echo "[$DATE] Nothing changed";
fi
