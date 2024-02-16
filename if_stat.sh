#!/bin/bash

num=300

if [ $num -eq 200 ]                             #add space after '[' and so on
then
	echo "The codition is true"
else
	echo "the variable does not equal 200"
fi


# -ne : not equal
# -gt : greater than


#we can check if a file exits in a directory or not
#let's check if math script file is present in the bash directory or not

if [ -f ~/math ]
then
	echo "math script file exists"
else
	echo "math script file does not exist"
fi
