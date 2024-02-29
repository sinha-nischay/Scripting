# Here, we are going to use grep command.
# grep command is used to find some specific text inside the a text file (just like ctrl+F)
# grep is case sensitive 

#!/bin/bash

release_file=/etc/

if grep -q "Red" $rlease_file
then
	echo "You're inside "Arch" block"
fi

if grep -q "Ubuntu" $release_file
then
	echo "You're inside "Ubuntu" block"
fi

echo "Done"
