#!/bin/bash
echo "Enter Password:"
read pwd
printf "$pwd" | wc -m >test.txt

echo $npwd
