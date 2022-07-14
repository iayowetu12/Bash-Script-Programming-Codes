
#!/bin/bash

# This script will iterate the value requested by the user

#Question 1
echo 'How many number of lines would you like'
read line
for ((outer=$line; outer>=1; outer--))
do
	for ((i=1; i<=$outer; i++)) do echo -n "X"; done
echo
done
echo

#Question 2
echo 'How many number of lines would you like'
read line

y=1
for ((outer=$line; outer>=1; outer--))
do
        for ((i=1; i<=$outer; i++)) do echo -n "X"; done
	for ((i=1; i<=$y; i++)) do echo -n "O"; done
y=$(( $y + 2))
echo
done
echo

#Question 3
echo 'How many number of lines would you like'
read line

y=1
for ((outer=$line; outer>=1; outer--))
do
        for ((i=1; i<=$outer; i++)) do echo -n " "; done
        for ((i=1; i<=$y; i++)) do echo -n "O"; done
y=$(( $y + 2))
echo
done
