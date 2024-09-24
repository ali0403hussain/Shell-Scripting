#!/bin/bash

# Description: This script use as a modular for other scripts to print.
# Usage: functions are available in other scripts
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# Define color codes
RED='\033[40;31m'
GREEN='\033[40;32m'
YELLOW='\033[40;33m'
BLUE='\033[40;34m'
BLUE_BLACK='\033[1;44;30m'
RESET='\033[0m'  # No color

# function to print error
console_error() {
    local message="$1"
    echo -e "${RED}[ERROR] ${message}${RESET}"
}

# function to print success
console_success() {
    local message="$1"
    echo -e "${GREEN}[Success] ${message}${RESET}"
}

# function to print info
console_info() {
    local message="$1"
    echo -e "${BLUE}[Info] ${message}${RESET}"
}

# function to print info
console_info_header() {
    local message="$1"
    echo -e "${BLUE_BLACK}[Info] ${message}${RESET}"
}


# function to print file content
console_file_content() {
    local file_name="$1"

    console_info "Content of $file_name:"
    echo -e "${YELLOW}$(cat ${file_name})${RESET}"
}