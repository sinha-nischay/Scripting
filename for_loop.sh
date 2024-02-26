# We see the use of for loops

#!/bin/bash

#The first time when this loop runs,'current_variable' will point to first item in the list,i.e., 1. 
#Thereafter, it will sleep for 1 sec and again come back to start of the loop. Then, current_variable will point to second
#item, which is 2. This will go on untill 10. Then, we will exit the loop 

for current_number in 1 2 3 4 5 6 7 8 9 10
do
	echo $current_number
	sleep 1
done

echo "This is outside the for loop"


#The above script can be simplified as follows:

for current_number in {1..10}
do
        echo $current_number
        sleep 1
done

echo "This is again outside the for loop"

# We will now zip the log files which are inside the logfiles folder. We will not zip the text file
# This script will go through all the files inside the logfiles folder. If the file name ends in '.log',
# it will run the 'tar ..' command for that file (i.e., it will zip that file).

for file in logfiles/*.log
do
	tar -czvf $file.tar.gz $file
#	rm -f $file
#	touch $file.log
done
