
#!/bin/bash

# This script  used to generate a set of 100 random numbers
#Creating numbers.txt file 
touch numbers.txt
for numbers in {1..100}
do
echo $RANDOM
done | sort -n > numbers.txt # sorting and writing to  file

wc_lines=`wc --lines < numbers.txt`

#Summming the numbers in the  numbers.txt
sum=0
while read line;
do
sum=`expr $line + $sum`
#echo $sum
done < numbers.txt

#Displaying the sum of numbers and number of lines
echo "numbers.txt contains $wc_lines lines"
echo "The sum of the numbers is $sum"
