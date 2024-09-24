#!/bin/bash -e

# Description: This script shows how to debug using -e
# Usage: ./script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# include console module for print
source ../Console/console.sh

FILE="no_file.txt"
ls $FILE
console_info "$FILE"