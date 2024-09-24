#!/bin/bash -x

# Description: This script shows how to debug 
# Usage: ./script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

# include console module for print
source ../Console/console.sh

PS4='+ $BASH_SOURCE : $LINENO : ${FUNCNAME[0]} ()'

debug () {
    console_info "Executing: $@"
    $@
}

debug ls
