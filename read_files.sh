#!/usr/bin/bash

#list the files and save to file-lists.txt
ls -d *filename* > output.txt

#chechking the existence of a file and remove
if [ -f "create-list.txt" ]
then
rm -f  create-list.txt
fi

#reading the files(existing) and create a new list
if [ -f "output.txt" ]
then
   while read -r line
   do
	sed -i '/^[[:space:]]*$/d' $line
	num_of_lines=`wc --lines < $line`
	echo $line $num_of_lines  >> create-list.txt
    done < "output.txt"
else
    echo "File $file Not Found."
fi

#Writing to the output.txt file
sort -k 2nr create-list.txt > output.txt

#Reading and printing from the output.txt filw
if [ -f "output.txt" ]
then
    while IFS=" " read -r fname num
    do
        echo "$fname - $num lines"
    done < "output.txt"
fi
