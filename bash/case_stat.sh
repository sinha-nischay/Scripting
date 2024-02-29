# Case statement is same as in verilog. We will ask the user about their favourite fruit. We will give them options.
# Although they will have several options, the script will keep on running untill they choose apple. We will do so
# using while statement.
# Once they choose apple, we will say that's the correct choice and exit the loop.
# Also, we need to give a default statement, in case the user chooses any other options except the provided ones.



#!/bin/bash

set=0

while [ $set -ne 1 ]
do
	echo "What is your favourite fruit?"
	echo "1 - Orange"
	echo "2 - Banana"
	echo "3 - Apple"
	echo "4 - Guava"
	echo "5 - Pineapple"

	read fruit;

	case $fruit in
		1) echo "Bro! Grow up!";;
		2) echo "Really! Banana?!";;
		3) set=1;;
		4) echo "Go pluck it from a tree!";;
		5) echo "You need to seriously reconsider your life!";;
		*) echo "Are you going to enter somthing wothwhile or not?!"
	esac
done

echo "Now that's what i'm talking about! Good choice!"
