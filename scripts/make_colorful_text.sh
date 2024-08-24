#!/bin/bash

make_colorful(){
    if [[ $# -ne 2 ]]; then
        echo "make colorful text needs two argument (string & color name)"
    
    fi

    local string=$1
    local color=$2

    if [[ $color = "red" ]]; then
        local color_code='\e[31m'
    
    elif [[ $color = "blue" ]]; then
        local color_code='\e[34m'
    
    elif [[ $color = "green" ]]; then
    local color_code='\e[32m'

    else
        local color_code='\e[39m'
    fi

    echo -e ${color_code}${string}

}

make_colorful $1 $2
