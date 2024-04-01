#!/usr/bin/perl

# Here, we will see the increment operation on strings.

# Increment operator: '++'
# First, we will see the effect of increment operation on string "abc". It will increment the 
# last letter 'c' to 'd'. So the new string becomes "abd".


$s1="abc";
$s1++;
print($s1++);      # Directly writing print($s1++);, will not print the incremented value.
		   # It will first print the value, then increment it.
print"\n";
print($s1);
print"\n";



# If we try to increment 'z', then the output will be 'aa'.

$s2="z";
$s2++;
print($s2);
print"\n";


# If the string is a combination of numeral and alphabets, then it will deduce the value of
# the string anf then operate on it.
# Ex. if the string is "1.2P34", then it will deduce the value of string as "1.2" and will
# increment it to "2.2"

$s3="1.2P34";
$s3++;
print($s3);
print"\n";






