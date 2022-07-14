#!/bin/bash

# This script will accept from the user
# and store the input as a variable

echo -e "please enter your name \n"
read name 
echo 
day=`date +%d`
month=`date +%B`
year=`date +%Y`
echo 'Hello '$name 'today is the '$day'th '$month $year

