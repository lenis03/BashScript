#!/bin/bash

if [[ ${#} != 3 ]]; then
    echo "Bad usage"
    echo "usage: ${0} <directory> <file_name> <content>"
    exit 1
fi

directory=$1
file_name=$2
content=$3

path=${directory}/${file_name}

if [[ ! -d ${directory} ]]; then
    mkdir ${directory} || { echo "can't creat directory ${directory}"; exit 1; }
fi

if [[ ! -f ${file_name} ]]; then
    touch ${path} || { echo "can't create file ${file}"; exit 1;}
fi

echo ${content} > ${path}

exit 0

