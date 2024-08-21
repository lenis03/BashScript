#!/bin/bash

file=${1}

if [[ -z ${file} ]];then
    read -p "Please enter your target file name: " file

fi

if [[ -e ${file} ]];then
    cp /dev/null ${file}

else
    touch ${file}

fi

if [[ $? -ne 0 ]];then
    echo "something went wrong please try again"
    exit 1

else
    echo "Everything is OK"
    exit 0

fi

