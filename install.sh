#!/usr/bin/env bash

#create necessary outide this repo so that main repo can use this subrepo

set -u # error on undefined variable
set -e # stop execution if one command returns != 0

BNAME="$( basename "$( pwd )" )"

FS=( makefile .gitignore )
for F in "${FS[@]}"; do
    if [ -e ../"$F" ]; then
        echo "FILE ALREADY EXISTS. INSTALLATION ABORTED: $F"
        exit 1
    fi
done

cp -r "in" ..
cd ..
for B in "${FS[@]}"; do
    ln -s "$BNAME"/"$B" "$B"
done

echo 'INSTALLATION FINISHED. CONSIDER ADDING GENERATED FILES TO PROJECT WITH: `git add`'
exit 0
