#!/bin/bash

# Description: This script shows how to make and call functions 
# Usage: ./script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# include console module for print
source ../Console/console.sh

# function that prints greeting message
greet() {
    console_info "Hello, Welcome to Bash Scripting!"
}

# functiion that prints greeting message
function fun_greet() {
    console_info "Hello, Welcome to Bash Scripting (fun_greet)!"
}

#function taking input arguments
args_greet() {
    local name=$1
    local age=$2

    console_info "Hello, Welcome to Bash Scripting. Your name: $name and age: $age"
}

# function to find if number is positive or negative with return
is_num_positive(){
    local num=$1

    if [ $num -gt 0 ]; then
        return 0  # for success
    else
        return 1  # for failure
    fi 
}

# checking exits status for Positive number
check_num_positive() {
    if [ $? -eq 0 ]; then
        console_success "The Number is poitive."
    else
        console_error "The Number is negative."
    fi 
}

# calling greet function
greet

# calling greet function
fun_greet

#calling args_greet function and passing input arguments
args_greet "Ali" 33

# checking number is positive or nwgative using exit status
is_num_positive 5
check_num_positive

is_num_positive -5
check_num_positive