#!/bin/bash

# Description: This script shows how to use wild cards
# Usage: ./script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# include console module for print
source ../Console/console.sh
source .././08.Functions/practice_script.sh

# creating different files 
path="$(pwd)/files"
files=(test_{1..5}.txt)
files+=(test_{1..3}.dat)
files+=({a..f})
files+=(ab)
files+=(cd)
files+=(ab.txt)
files+=(cd.txt)
files+=(cat)
files+=(cot)
files+=(cst)
files+=(test_{1..5})
create_files "$path" "${files[@]}"

# use * wild card to list all files ends with .txt
console_info_header "List all files that ends with .txt"
ls $path/*.txt

# use * wild card to list all files start with t
console_info_header "List all files that starts with t"
ls $path/t*

# use * wild card to list all files starts with t and ends with .txt
console_info_header "List all files that starts with t and ends with .txt"
ls $path/t*.txt

# use * wild card to list all files with name contains single characters
console_info_header "List all files names with single character"
ls $path/?

# use * wild card to list all files with name contains two characters
console_info_header "List all files names with two character"
ls $path/??

# use * wild card to list all files with name contains one characters and starts with a
console_info_header "List all files names with one character and starts with a"
ls $path/a?

# use * wild card to list all files with name contains one characters and starts with a
console_info_header "List all files names with one character and starts with a"
ls $path/a?

# use * wild card to list all files with name starting with c and and contains aeiou and ends with t
console_info_header "List all files names starts with c and contains aeiou and ends with t"
ls $path/c[aeiou]t

# use * wild card to list all files with name starting with c and and contains s and ends with t
console_info_header "List all files names starts with c and contains s and ends with t"
ls $path/c[s]t

# use * wild card to list all files with name containing a to d alphabets
console_info_header "List all files names containing a to d alphabets"
ls $path/[a-d]*

# use * wild card to list all files with name ends with digits
console_info_header "List all files names ends with digits"
ls $path/*[[:digit:]]

# move all .txt files to new directory named notes
dir_notes="$(pwd)/notes"
if [ -d $dir_notes ]; then
    rm -rf $dir_notes
    mkdir $dir_notes
else
    mkdir $dir_notes
fi

mv *.txt $dir_notes
