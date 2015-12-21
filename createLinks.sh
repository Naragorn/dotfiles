#!/bin/bash
me=`basename "$0"`
dir=$(pwd)
for f in $(ls)
do
    if [ $f != `basename "$0"` ]
    then
        sudo ln -s $dir/$f ~/.$f
    fi
done
