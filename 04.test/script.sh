#!/bin/bash

# Description: This script perform operations for test
# Usage: ./script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# include console module for print
source ../Console/console.sh

# function to check if file exists
check_if_file_exists() {
    local file_name=$1

    if [ -e "${file_name}" ]; then
        console_success "$file_name exists."
    else
        console_error "$file_name not exists."
        # creating file
        touch $file_name
        console_info "$file_name Created." 
    fi
}

# function to check if regular file
check_if_file_regulat() {
    local file_name=$1

     if [ -f "${file_name}" ]; then
        console_success "$file_name is regular file."
    else
        console_error "$file_name not regular file."
    fi
}

#function to check if its readable
check_if_file_readable() {
    local file_name=$1

     if [ -r "${file_name}" ]; then
        console_success "$file_name is readable file."
    else
        console_error "$file_name not readable file."
    fi
}

#function to check if its writeable
check_if_file_writeable() {
    local file_name=$1

     if [ -w "${file_name}" ]; then
        console_success "$file_name is writeable file."
    else
        console_error "$file_name not writeable file."
    fi
}

#function to check if its executable
check_if_file_executable() {
    local file_name=$1

     if [ -x "${file_name}" ]; then
        console_success "$file_name is executable file."
    else
        console_error "$file_name not executable file."
    fi
}

#function to check if its exists and is directory
check_if_file_exists_and_dir() {
    local file_name=$1

     if [ -d "${file_name}" ]; then
        console_success "$file_name exists and is directory."
    else
        console_error "$file_name not a directory."
    fi
}

#function to check if string is empty
check_if_string_empty() {
    local string=$1

     if [ -z "${string}" ]; then
        console_success " String is empty."
    else
        console_error "String is not empty."
    fi
}

#function to check if two strings are equal
check_if_equal_strings() {
    local string1=$1
    local string2=$2

     if [ "${string1}" = "${string2}" ]; then
        console_success " Strings are equal."
    else
        console_error "Strings are not not equal."
    fi
}

#function to check if two numbers are equal
check_if_equal_integers() {
    local num1=$1
    local num2=$2

     if [ "${num1}" -eq "${num2}" ]; then
        console_success "$num1 is equal to $num2"
    else
        console_error "$num1 is not equal to $num2"
    fi
}

#function to check if number1 is greater than number2
check_if_greater_integer() {
    local num1=$1
    local num2=$2

     if [ "${num1}" -gt "${num2}" ]; then
        console_success "$num1 is greater than $num2"
    else
        console_error "$num1 is not greater than $num2"
    fi
}

#function to check if number1 is less than number2
check_if_less_integer() {
    local num1=$1
    local num2=$2

     if [ "${num1}" -lt "${num2}" ]; then
        console_success "$num1 is less than $num2"
    else
        console_error "$num1 is not less than $num2"
    fi
}

#function to check if number1 is greater than or equal to number2
check_if_greater_equal_integer() {
    local num1=$1
    local num2=$2

     if [ "${num1}" -ge "${num2}" ]; then
        console_success "$num1 is greater than or equal to $num2"
    else
        console_error "$num1 is not greater than or equal to $num2"
    fi
}

#function to check if number1 is less than or equal to number2
check_if_less_equal_integer() {
    local num1=$1
    local num2=$2

     if [ "${num1}" -le "${num2}" ]; then
        console_success "$num1 is less than or equal to $num2"
    else
        console_error "$num1 is not less than or equal to $num2"
    fi
}

# checking if file exists
check_if_file_exists "test.txt"
# checking if file is regular 
check_if_file_regulat "test.txt"
# checking if file is readable 
check_if_file_readable "test.txt"
# checking if file is writeable
check_if_file_writeable "test.txt"
# checking if file is executable 
check_if_file_executable "test.txt"
# checking if file exists and is directory 
check_if_file_exists_and_dir "test.txt"

# Checking if Empty string
string=""
check_if_string_empty $string
string="Hello World!...."
check_if_string_empty $string

# checking if strings are equal
string1="Hello"
string2="Hello"
string3="World"
check_if_equal_strings $string1 $string2
check_if_equal_strings $string1 $string3

# checking if two numbers are equal
num1=100
num2=100
num3=200
check_if_equal_integers $num1 $num2
check_if_equal_integers $num1 $num3

check_if_greater_integer $num3 $num1
check_if_greater_integer $num1 $num3

check_if_less_integer $num1 $num3
check_if_less_integer $num3 $num1

check_if_greater_equal_integer $num1 $num2
check_if_greater_equal_integer $num1 $num3
check_if_greater_equal_integer $num3 $num1

check_if_less_equal_integer $num1 $num2
check_if_less_equal_integer $num1 $num3
check_if_less_equal_integer $num3 $num1