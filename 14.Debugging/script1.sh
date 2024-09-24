#!/bin/bash 

# Description: This script shows how to debug using -x to specific portion of the code
# Usage: ./script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# include console module for print
source ../Console/console.sh

TEST_VAR="test"
set -x
console_info "$TEST_VAR"
set +x
console_info "$TEST_VAR"