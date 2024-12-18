#!/bin/sh

WORKDIR=$(dirname $(realpath "$0"));
cd $WORKDIR;
./run.sh;
any_chg=$(git diff | grep 'diff --git');
if [ ! -z "$any_chg" ]
then
    DATE=`date +%Y-%m-%dT%H:%M:%S`;
    git add . ;
    git commit -m "feat: autocmt on $DATE";
    git push origin;
    echo "[$DATE] Autocommit";
else
    echo "[$DATE] Nothing changed";
fi
