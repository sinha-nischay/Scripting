# This program searches for a file 'newfile' every 1 seconds. 
# If file is available, it prints file exists with the time
# If it is unable to find the file it shows error message and code stops working

#!/bin/bash
file=newfile
sl=1
while [ -f $file  ]
do
	echo "As of $(date), $file is available"
	sleep $sl
done

echo "As of $(date), $file has gone missing"
