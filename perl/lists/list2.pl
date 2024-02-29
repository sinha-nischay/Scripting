#!/usr/bin/perl

# Here, we will look at some more functionalities of lists.


# We can create a list of integers without needing to write all of it using '..'

@list1=(1..10);
print(@list1);
print"\n";

# We can also create a list which is part continuous and part not continuous

@list2=(1..4, 7..9, 11);
print(@list2);
print"\n";


# We cannot create floating point values automatically as we did above. Ex. (2.1..6.3) will
# give output starting from 2 and give integer values from 2 to 6, including 6. So, the output
# will be 23456

@list3=(2.1..6.3);
print(@list3);
print"\n";


# Suppose we want to put spaces in between the items of the list displayed, just use ""

print("@list3");
print"\n";


# We can also print alphabets

@list4=(aa..ah);
print("@list4");
print "\n";

# Suppose we want to assign first 2 consecutive values of list to 2 different scalars, then we can do so by:
# Ex. Here, we will assign the first 2 consecutive values of list4 i.e. aa and ab to var1 and var2


$var1, $var2 = @list3;

print($var1);                          # THIS IS NOT WORKING RIGHT NOW!! REVIEW NEEDED!!
print"\n";
#print"$var2";
print"\n";


















