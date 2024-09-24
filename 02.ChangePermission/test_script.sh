#!/bin/bash

# Description: This script read and write from/into test_data.txt file.
# Usage: ./test_script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# include console module for print
source ../Console/console.sh

# Variable for saving content of file
CONTENT_FOR_FILE="Hello\nThis is test data file....\nIt contains\n1234\nABCD\n@#$%"

# function to copy original content to test_data.txt file
copy_original_content_to_file() {
    # local variables for saving arguments
    local file_name=$1
    local file_content=$2

    # saving original file permission status
    original_file_permissions=$(stat -c "%a" "$file_name")

    # changing file permission to write operation
    chmod 755 $file_name
    #writing data to file
    echo -e $file_content > $file_name

    # restore previous file permissions
    chmod "$original_file_permissions" "$file_name"

    console_success "${file_name} Data Copied."
}

# function to check if file exist. if not then create file
check_if_file_exists() {
    # local variable for file name
    local file_name=$1

    # checking if file exists
    if [ -e "$file_name" ]; then
        console_success "${file_name} file exists."
    else
        console_error "${file_name} file not exists."
        console_info "${file_name} Creating file."
        # Creating file
        touch $file_name
        if [ -e "$file_name" ]; then
            console_success "${file_name} file created."
            console_info "Copying Data"
            #Copy content to file
            copy_original_content_to_file "$file_name" "$CONTENT_FOR_FILE"
            #change permission to read only
            chmod 555 $file_name
        else
            console_error "${file_name} Could not create. Program Ends!"
            exit 1
        fi 
    fi
}

# function to read from file
read_data_file() {
    # local variable for file name
    local file_name=$1

    console_file_content $file_name
}

#funtion to append something to file
write_data_file() {
    # local variable for file name
    local file_name=$1
    local message_to_write=$2

    # saving original file permission status
    original_file_permissions=$(stat -c "%a" "$file_name")

    # changing file permission to write operation
    chmod 755 $file_name

    echo $message_to_write >> $file_name

     # restore previous file permissions
    chmod "$original_file_permissions" "$file_name"

    console_success "${file_name} Data Written."
}

# function called from run_test_script.sh
execute_test_script() {
    #local variable for file name
    local data_file_name=$1

    console_info "Test Script starts....."

    check_if_file_exists $data_file_name
    read_data_file $data_file_name
    write_data_file $data_file_name "Line added by test_script.sh"
}



