#!/usr/bin/perl


# We are going to see a real life example of file handing in this example.



# suppose we have a file named 'leaders.rpt' which contains data regarding 8 leaders
# of different nations (name,country,phone,price).
# We want to find the name of the leader who uses the most expensive phone.




# We are going to open the file 'leader.rpt' in 'read' mode (specified by '<'). The contents of the
# file 'leaders.rpt' will be stored in $fh file handle.NOTE: For write mode: '>' 

# We will use while loop to read the file line by line. We will specify 'line' as a variable which we 
# will use to read the file 'leader.rpt' line by line.
# To process the line in desired manner, we need to store it as an array of elements. Thus, to store it
# as an array of elements, we will split the line using space as a separator. Thus, the array has 
# elements as (leader,country,phone,price).
# Now, we will store the last element (using -1th position) of the array into a different array named 
# 'price', using 'push' function. In this way, in each iteration of while loop, the price of each line 
# will be stored/pushed into 'price' array. Similarly, we will store the name of the leader in every 
# iteration (using 0th position, as name is the 1st element) in the array named 'name'

# But as the last element of 1st line is the heading 'price', we don't want to store that in the 'price' array.
# So we will use a 'for' loop to stop this heading to enter into the array 'price'. 

# Now to get the maximum value from the array 'price', we will use a utility function: max
# To use the 'max' utility we need to specify: use List::Util qw(min max); at the beginning.
# We store this maximum price in the varible 'maxprice'.
#

# Now, we will create a hash. We will access the array as a key value pair and not the indices. We will specify
# the hash name 'leaders' and inside the {} we provide the key '$data[-1]' which represents the price of the phone.
# We then write $leaders{$data[-1]=$name}. Thus the name of each leader is connected to their phone prices, with 
# their phone prices as the key.

# Thus, to print the name of the leader with maximum price, we specify the hash 'leaders' with 'maxprice'.
# This 'maxprice' will match with the maximum amongst the pricesmaxprice


use List::Util qw(min max);		# writing this to use the 'max' utility
@price;					# defining 'price' array to store prices
open($fh, '<', "leader.rpt");   	# opening the file 'leader,rpt' in read mode and storing that in fh
while($line=<$fh>){			# using while loop to iterate through each line of fh
	@data = split(' ',$line);	# splitting the contents of each line of fh and storing it in 'data' array
	if($data[-1]!='price'){		# using condition to avoid the heading from getting into 'price' array
	push(@price,$data[-1]);		# pusing the price of each line in each iteration into price array
	$name=$data[0];			# storing the names of leaders in the variable name
	$leaders{$data[-1]}=$name;	# creating hash 'leaders' with price, ($data[-1]), as the key and each key assigned to corrsponding name of leader 
	}
}
print("@price\n");			# printing the price array
$maxprice = max @price;			# finding the maximum value within price array and storing it in the variable 'maxprice'
print "The maximum price is:$maxprice\n";					# printing the maximum price
print("The leader with most expensive phone is:$leaders{$maxprice}\n");		# printing the hash whose key matches with the maxprice value. This 
										# prints the name of the leader associated with the key.






























