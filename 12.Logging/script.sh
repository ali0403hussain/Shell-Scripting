#!/bin/bash

# Description: This script shows how to use logging
# Usage: ./script.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

logit () {
    local LOG_LEVEL=$1
    shift
    MSG=$@
    TIMESTAMP=$(date +"%Y-%m-%d %T")
    if [ $LOG_LEVEL = 'ERROR' ] || $VERBOSE
    then
        echo "${TIMESTAMP} ${HOST} ${PROGRAM_NAME}- [${PID}]: ${LOG_LEVEL} ${MSG}"
    fi
}

logit INFO "Processing data."
