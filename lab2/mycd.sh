#! /bin/bash

if [ $# -gt 1 ]; then
    echo "Please enter zero OR one directory name"
elif [ $# -eq 0 ]; then
    cd ~
else
    if [ -d $1 ]; then
        cd $1
    else
        echo "Directory is not found"
    fi
fi
