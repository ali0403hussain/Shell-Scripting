#!/bin/bash

# Description: This script performs operations for exit status and return codes
# Usage: ./script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# include console module for print
source ../Console/console.sh

# function to check if command executes successfully or not
check_if_command_executes() {
    if [ $? -eq 0 ]; then
        console_success "Command executes successfully."
    else
        console_error "Command fails to execute: $?"
    fi 
}

# function to check if command executes successfully or not
check_if_command_executes_and_exit() {
    if [ $? -eq 0 ]; then
        console_success "Command executes successfully."
        exit 0
    else
        console_error "Command fails to execute: $?"
        exit 1
    fi 
}

# function to simulate a failure
task_simulate_failure(){
    return -1
}

# checking on non existance directory
console_info_header "Example1 for checking command execute/fails  "
ls /non_existance/dir
check_if_command_executes

# checking on present file
console_info_header "Example2 for checking command execute/fails  "
ls README.md
check_if_command_executes

console_info_header "Example for checking command on testing network connectivity and use exit"
host="google.com"
console_info "Start Ping $host"
ping -c 1 $host

if [ $? -eq 0 ]; then
    console_success "Host Reachable."
else
    console_error "Host unreachable"
fi 

# using exit 
console_info_header "Example for checking command execute/fails and use exit  "
task_simulate_failure
check_if_command_executes_and_exit