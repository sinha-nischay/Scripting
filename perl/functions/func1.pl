#!/usr/bin/perl


# Here, we will see one more example of function
# We will pass both scalar and an array as argument. The function combines both and prints the value.

sub printmylist{		# defining the function named 'printmylist'
my @list=@_;			# storing the arguments passed into an array named 'list'.
				# 'my' keyword modifies the scope of vaiable from public to private. Its just
				# a fancy way of saying that we can use the array 'list' only inside the function
print ("My list is: @list\n");
}

$x=10;
@array1=(20,30,40,50);

printmylist($x, @array1);






















