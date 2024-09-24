#!/bin/bash

# Description: This script performs operations for user input
# Usage: ./script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# include console module for print
source ../Console/console.sh

# Prompt user for name and read
console_info "Enter your name"
read name
console_info "Your name: ${name}"

# Prompt the user with -p
read -p "Enter your age: " age
echo "Your age is $age."

# Prompt for password in silent mode
read -sp "Enter your password: " password
echo  # Print a new line
echo "Your password is $password."

# Prompt with a timeout of 5 seconds
read -t 5 -p "Enter your username (you have 5 seconds): " username
echo "Username is $username."

# Read multiple words into an array
read -p "Enter multiple words: " -a words_array
# Display the words entered
echo "You entered: ${words_array[@]}"