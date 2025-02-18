#!/bin/sh

WORKDIR=$(dirname $(realpath "$0"));
cd $WORKDIR;

./sync.sh;

any_chg=$(git diff | grep 'diff --git');
DATE=`date +%Y-%m-%dT%H:%M:%S`;
if [ ! -z "$any_chg" ]
then
    git add . ;
    git commit -m "feat: autocmt on $DATE";
    git push origin;
    echo "[$DATE] Autocommit";
else
    echo "[$DATE] Nothing changed";
fi
