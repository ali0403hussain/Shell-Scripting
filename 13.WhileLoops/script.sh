#!/bin/bash

# Description: This script shows how to use while loops
# Usage: ./script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# include console module for print
source ../Console/console.sh

create_projects() {
    local INDEX=1
    while [ $INDEX -lt 6 ]
    do 
        console_info "Creating project-${INDEX}"
        mkdir /usr/local/project-${INDEX}
        ((INDEX++))
    done
}

user_request() {
    while [ "$CORRECT" != "y" ]
    do 
        read -p "Enter your name: " NAME
        read -p "Is ${NAME} correct? " CORRECT
    done 
}

create_file_and_write_data() {
    local FILE=$1
    local DATA=$2

    if [ ! -f "$FILE" ]; then
        console_error "File not present. Creating file" 
        touch $FILE
    fi 

    echo "$DATA" >> "$FILE"
}

read_file() {
    local FILE=$1
    local LINE_NO=1
    while read LINE
    do 
        console_info "${LINE_NO}: ${LINE}"
        ((LINE_NO++))
    done  < $FILE
}

# create_projects
# user_request

# Creating file and write some lines to it
FILE="$(pwd)/test_data.txt"
INDEX=1
while [ "$INDEX" -lt 8 ]
do 
    create_file_and_write_data $FILE "This is line ${INDEX}."
    ((INDEX++))
done 

# reading file
console_info_header "Reading file ${FILE}"
read_file $FILE