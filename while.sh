# It is a simple while loop example

#!/bin/bash
myvar=1

while [ $myvar -le 10 ]
do
	echo $myvar
	myvar=$(($myvar+1))   # make sure that the outermost $ has only one argument given,i.e., cover the inside expr. with brackets
	sleep 0.5
done
