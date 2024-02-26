# We will see how to manipulate	different data streams


#!/bin/bash

# we are going to find all the files inside the	etc folders. This command is going to produce 
# certain standard outputs and standard	errors also. We	will redirect the errors to a file and
# will produce only standard outputs on	the terminal and not standard errors

find /etc -type	f 2>errors.txt            # '2' implies standard error, '1' implies standard output


# Similarly, we can also put standard output to a file and display standard error
# Note: Even if you type ">output_error.txt", it means the same as by default it is "1>.."

find /etc -type f 1>output.txt

# We can also group together standard output and error together and put them in a file, and display
# nothing on the terminal

find /etc -type f &>output_error.txt

# Note: If you want to append in a file and not erase and write again, use ">>" instead of ">"


# The third type of data stream is standard input. An example of that is:

echo "Please enter your name"
read myname
echo "Your name is: $myname"
