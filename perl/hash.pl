#!/usr/bin/perl


# We will see how to use hash

# We can create a hash in one of the 2 ways shown below:

# Way-1: We create hash with key->value pairs of: foo->35, bar->12.4, 2.5-> "hello"
%hash1=('foo',35,'bar',12.4,'2.5',"hello");

# Way-2: We can also create a hash in the following way:
$data{'wilma'}=1.72e30;		# key->value pair: wilma->1.72e30



# Ex.1: We want to create hash with world leaders name and their country names:

%leaders=('Modi',India,'trump',usa,'putin',russia);

print("\$leader{'Modi'}=$leaders{'Modi'}\n");		# \$leader.. will be printed as it is in the terminal
							# $leader{'Modi'} points to the hash element whose key
							# value is 'Modi'. It will print the value associated with
							# the key 'Modi'.
print("\$leader{'trump'}=$leaders{'trump'}\n");    	# Same explanation as that of modi



# Now, we can add an element in the existing hash by:

$leaders{'Boris'}= britain;				# Here, Boris is the key and britain is its value



# Now, suppose we want to extract the names of all the leaders from the hash. This can be done extracting all the 
# keys as names of all the leaders is present as keys. 

@names= keys %leaders;

# We can also extract the country of the leaders by extracting the values of the keys (as the name of the country is
# stored as the value of the keys).

@country=values %leaders;


print("The leaders' names are:\n@names\n");
print("The countries they belong to are:\n@country\n");

# We can also print the key value pairs simultaneously. (Here, it means printing the names of leaders and their
# countries simultaneously)
# For doing that we will use while loop


print("The key value pairs are:\n");
while(($key,$value)=each %leaders){
	print("$key => $value\n");
}





















