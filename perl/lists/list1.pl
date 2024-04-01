#!/usr/bin/perl



# When we define any scalar variable such as this: $scalar='text'; it implies a list with 
# one scalar variable.     -----> List of scalar type

$s1='text';
print($s1);
print"\n";



# If we define an array like @array=(1,2,3); it implies a list with collection of different items.
# -------> List of array type


# If we define a hash like %hash=(key => 'val1', key2 => 'val2'); it implies list with 
# different key value pairs.
# --------> List of hash type


# Thus, all of Perl's Data Types (Scalar, Array and Hash) can provide a list.


# List: 
# 1. A list is a collection of scalars.
# 2. Each value in the list is called a 'list element'

@list1=(a,b,c,d);                      # list of characters
@list2=(1,2,3,4);                      # list of integers
@list3=("This","is","a","list");       # list of strings


# We can access the list elements just as in verilog:

@names=(Ram,shyam);
$n1=$names[0];              # This will access the elements at 0th position i.e. Ram
print($n1);
print"\n";

# Note: The last element of any list can be accesses by using '-1'
#       Ex. Here, the last element is shyam. It can be accessed by $names[-1]. We can also
#       access shyam using $names[1] as it is at the 1st position of the list.

$n2=$names[-1];             
print($n2);
print"\n";
$n3=$names[1];
print($n3);
print"\n";




# List Slicing: We can assign a part of an exsting list to another list
# Ex. we will first create a list of 12 names: 0th to 11th position. Then 
# we will assign the part 3 to 5 of the list to a new list with positions
# 0,1 and 2. Finally, we will print the element present at 1st position of 
# this new list.

@names1=(Ram,shyam,suresh,mahesh,raju,baburao,anjali,gita,sunita,babita,tarak,jethalal);
@new_names[0,1,2]=@names1[3,4,5];
print($new_names[1]);
print"\n"; 










