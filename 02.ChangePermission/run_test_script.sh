#!/bin/bash

# Description: This script use test_script.sh file to read and write to data file.
# Usage: ./run_test_script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# include console module for print
source ../Console/console.sh
# include test_script.sh 
source test_script.sh

#file name
data_file_name="test_data.txt"

# execute execute_test_script to generate data file
execute_test_script $data_file_name

# Now try to write something to that file
# This will cause error: Permission denied 
echo "Line added by run_test_script.sh by itself" >> "test_data.txt"

# Now use write function from test_script to write 
# As this function changes file permission first to write
write_data_file $data_file_name "Line added by run_test_script.sh by using test_script.sh"