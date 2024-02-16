# We are writing an exit code here. ($?) : $?=0, means command successful; anything except 0 means command unsuccessful
# This program installs a package called nonexist. 
# There is no such package, so naturally command will be unsuccessful.

#!/bin/bash
package=nonexist
sudo apt install $package
#echo "The exit code for the package install is: $?"      #If we don't comment this code, $? will become 0 (as this line will execute)

if [ $? -eq 0  ]
then
	echo "The installation of $package was successful"
	echo "The new command is available here:"
	which $package
else
	echo "$package failed to install!"
fi
