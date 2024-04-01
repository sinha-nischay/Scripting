#!/usr/bin/perl

# Function: * It is also called as subroutines.
# 	    * We don't specify the arguments in the subroutine when we are defining it.
# 	    * While calling the function, we define the arguments
# 	    * While calling, if the argument contains both scalar and array, we write 
# 	      array as the last argument.
# 	    * To access the argument inside the function, we have a special array: @_
# 	    * @_ stores all the arguments passed to the function. We can access them as
# 	      $_[0], $_[1], $_[2],...




# Here, we will define a function to find the average of the numbers passed onto the function.

sub Average {
$n=scalar(@_);			# To get the total number of arguments passed
$sum=0;
foreach $item(@_){
	$sum+=$item;
	}
$average=$sum/$n;
print("Average is: $average\n");
}


Average (10,20,30);   		# Finding average of 10,20 & 30



@array1=(40,50,60,70,80);
Average(10,20,30,@array1);	# Finding Average by passing a combination of array and individual arguments
				# NOTE: We passed the array as the last argument.



















