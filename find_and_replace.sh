#!/bin/bash

if ! [ $# -eq 2 ]
then
    echo Usage: find_and_replace \<find\> \<replace\>
    exit 1
fi

if [ -d "$replace" ]; then
    mkdir replace
fi

sed 's/$1/$2/' *.txt > replace/out.txt
echo $1; echo $2
