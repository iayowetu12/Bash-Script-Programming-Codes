#!/bin/bash

echo "Enter Password:"
read pwd

# Counting the number of characters
char=$(echo -n "$pwd" | wc -c)

# Counting special characters
special=$(expr length "${pwd//[^\~!@#$&*()]/}")

# Setting  certain numbers constant
min=7;
zero=0;

if [ "$char" -gt "$min" ]; then
  echo "$pwd" | grep -q [0-9];
  if  test $? -eq $zero; then
	echo "$pwd" | grep -q [a-z] && echo "$pwd" | grep -q [A-Z];
	if test $? -eq $zero; then
	  echo "Very strong  password  must";
	else
	  echo "Password must contain upper and lower cases";
   	fi;
  else
	echo "Weak Password. No number!";
  fi;
else
  echo "The length should be a minimum of 8 characters";
fi;


#echo "$pwd" | grep -q [0-9]


#$echo "enter the password"
#$read password
#len="${#password}"
        #echo "$password" | grep -q [0-9]
        # if test $? -eq 0 ; then
           #    echo "$password" | grep -q [A-Z]
          #          if test $? -eq 0 ; then
         #             echo "$password" | grep -q [a-z]   
        #                  if test $? -eq 0 ; then
       #                    echo "Strong password"
      #                 else
     #                      echo "weak password include lower case char"
    #                   fi
   #             else
  #                echo "weak password include capital char" 
 #               fi
#else
#      echo "please include the numbers in password it is weak password"
#fi
