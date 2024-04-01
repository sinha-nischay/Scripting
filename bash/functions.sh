# Here, we are going to make use of the functions.
# Functions allow us to write the same code with fewer lines.


# Here, we want user to enter certain details. Also, whenever the user enters the details, we want to give them a response
# that we have received their response. We will make a function named display and will call it when required. 


#!/bin/bash

display() {
	echo "We have received your input. Thank you!"

}


echo "Please enter a number"
read num
display

echo "Please enter your name"
read name
display

echo "Are you happy with the training? (Yes/No)"
read response
display
