# We have already used exit code in prog1.sh, but here we are going to customize it according to our needs.
# We are going to use force exit with custom exit codes for success and failure.

#!/bin/bash
directory=/nonexist  #There is no such directiry as nonexist, so naturally this comand will fail.
if [ -d $directory ]
then
	echo "The directory $directory exists"
	exit 1					# I am setting 1 as success.
else
	echo "The directory $directory doesn't exist"
	exit 2					# I am setting 2 as failure.
fi

echo "The exit code for this script run is:$?"  # These 3 echoes will also not execute as we have aleady force exited the 
echo "You didn't see that statement. "          # code (either in 'if' or in 'else')
echo "You won't see this one either. "
