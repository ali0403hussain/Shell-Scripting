#!/bin/bash

# Description: This script Assign command output to variable
# Usage: ./script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# include console module for print
source ../Console/console.sh

# saving name of PC on this variable
SERVER_NAME=$(hostname)

console_info "Running this script on ${SERVER_NAME}"