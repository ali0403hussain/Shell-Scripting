#!/bin/bash

# Description: This script performs operations for loops
# Usage: ./script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# include console module for print
source ../Console/console.sh

# Example1 of for loop
console_info_header "for loop Example 1 "
for item in "apple" "banana" "cherry"
do 
    console_info "Fruit->$item"
done

# Example2 of for loop
console_info_header "for loop Example 2"
for num in {1..10}
do 
    console_info "Number->$num"
done

# Example3 of for loop
console_info_header "for loop Example 3 C-Style"
for ((num=0; num<5; num++))
do 
    console_info "Number->$num"
done

# Example4 of for loop
console_info_header "for loop Example 4 using continue break"
for num in {1..20}
do
    if [ $num -eq 4 ]; then
        console_success "Skipping iteration for $num"
        continue 
    fi

    if [ $num -eq 7 ]; then
        console_error "Breaking loop at $num"
        break 
    fi

    console_info "Number->$num" 
done

# Example1 of while loop
console_info_header "while loop Example 1 "
counter=0

while [ $counter -le 5 ]
do
    console_info "Number->$counter"
    ((counter++))
done

# Example1 of until loop
console_info_header "until loop Example 1 "
counter=0

until [ $counter -gt 5 ]
do
    console_info "Number->$counter"
    ((counter++))
done

