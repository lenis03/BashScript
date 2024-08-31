#!/bin/bash

function githib(){
    base_url="https://github.com"
    status_code=$( curl -I -s "${base_url}/${username}" | grep -w "HTTP" | cut -d " " -f2 )
    if [[ $status_code == 200 ]]; then
        echo "${username} exists on github!"
    else
        echo "${username} doesn't exists on github!"
    fi

}   

username=$1

if [[ -z ${username} ]]; then
    read -p "Enter your target username for search on github: " username 
fi

githib