#!/bin/bash

# Description: This script performs Hello World program with different text and background colors.
# Usage: ./hello_world.sh
# Author: Ali Hussain
# Email: ali0403hussain@gmail.com
# Date: 2024-09-04

echo "Hello World from Bash Script..."

for back_ground_color in {40..47};do
    echo "Changing background Color......................"
    for text_color in {30..37};do
        echo -e "\033[${text_color};${back_ground_color}mHello, World.....\033[0m"
    done
done