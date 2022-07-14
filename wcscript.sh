#!/usr/bin/bash

#path to the file

file_path="/home/sir/CHPC/Linux_scripts/demo.txt"

#Using word count (wc) to count the number of lines
num_of_lines=`wc --lines < $file_path`

#Using wc command to count the  number of words
num_of_words=`wc --word < $file_path`

# Displaying number of lines and number of words
echo "Number of lines: $num_of_lines"
echo "Number of words: $num_of_words"

