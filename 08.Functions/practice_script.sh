#!/bin/bash

# Description: 1) Create function which takes input argument as path and array of files to create. Then create
# files in that directory. Pass the path current directory/etc/files and create 80 files with names
# test_data_1.txt .... test_data_80.txt
# 2) find test_data_file_27.txt if it exist then make backup of this file in another directory i.e 
# etc/backup/ and name this file with the name of this file and data and time.
# If you use a variable in your function, remember to make it a local variable.
# Usage: ./practice_script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# include console module for print
source ../Console/console.sh

# function to create directory and add files to it
create_files() {
    local path="$1"
    local files=("$@")

    # checking and creating directory
    if [ -d $path ]; then
        console_success "Directory already present. Deleting and creating fresh dir."
        rm -rf $path
        mkdir -p $path
    else
        console_error "No directory found"
        console_info "Creating directory"
        mkdir -p $path
    fi

    # creating files
    for file in "${files[@]}"; do
        cd $path && touch $file
    done
}

# function for file backup
create_file_backup() {
    local file_path=$1
    local file=$2
    local backup_path=$3
    local current_date_time=$(date +"%Y%m%d_%H%M%S")
    local backup_file="${file%.*}_backup_${current_date_time}.${file##*.}"

    if [ -d $file_path ]; then
        console_success "Directory found."
        if [ -f $file ]; then
            console_success "$file found."
        else
            console_error "$file Not found"
            exit 1
        fi 
    else
        console_error "No directory found"
        exit 1
    fi

    if [ -d $backup_path ]; then
        console_success "Directory found."
    else
        console_error "No directory found"
        console_info "Creating dir $backup_path"
        mkdir $backup_path
    fi 

    if [ -f $file ]; then
        console_sucess "$file found"
    else
        console_error "$file not found"
        exit 1
    fi

    cp "$file" "${backup_path}/$backup_file"
}

# This ensures the script does not execute anything unless it's being run directly
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    #calling create file
    path="$(pwd)/etc/files"
    files=(test_data_{1..80}.txt)
    create_files "$path" "${files[@]}"
    file_name="test_data_27.txt"
    back_up_path=$( dirname "$path") 
    back_up_path=${back_up_path}/backup
    create_file_backup "$path" "$file_name" "$back_up_path"
fi