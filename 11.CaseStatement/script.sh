#!/bin/bash

# Description: This script shows how to use case statements
# Usage: ./script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# include console module for print
source ../Console/console.sh

simple_case() {

    console_info "Enter 1 for start app and 0 for stop app."
    read -p "Enterchoice: " choice

    case "$choice" in
        1)
            console_info "Hello you have request for start app"
            ;;
        0)
            console_info "Hello you have request for stop app"
            ;;
    esac
}

simple_case




