#!/bin/bash 

# Description: This script shows how to use sed
# Usage: ./script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# include console module for print
source ../Console/console.sh

# creating text file
FILE="$(pwd)/test_file.txt"
if [ ! -f "$FILE" ]; then
    touch $FILE
fi

echo 'Hello. This is bash script which helps to use sed' > $FILE
cat $FILE

# find and replace text 
console_info_header "Replace using sed"
sed 's/helps/helps you to learn how/' $FILE 

# find and replace text but its case sensitive
console_info_header "Replace using sed but its case sensitive"
sed 's/HELPS/helps you to learn how/' $FILE 

# Using case independent flag i
console_info_header "Replace using sed with flag i"
sed 's/HELPS/helps you to learn how/i' $FILE 

# Using case independent flag I
console_info_header "Replace using sed with flag I"
sed 's/HELPS/helps you to learn how/I' $FILE 

#append few more lines to text file
echo 'This is line 2.' >> $FILE
echo 'I love Programming bash script.' >> $FILE

#sed replace all in file with g flag global flag
console_info_header "Replace using sed and change all occurance with g flag" 
sed 's/bash script/c-langauge/g' $FILE

#sed replace for specific occurance
console_info_header "Replace using sed for specific occurance" 
sed 's/bash script/c-langauge/1' $FILE