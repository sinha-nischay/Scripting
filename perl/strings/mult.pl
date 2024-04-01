#!/usr/bin/perl

# Here we will multiply a string "Hello" with 2. Strings (with no numerical value), are treated as
# 0 after parsing. Hence, multipying the string "Hello" with 2 will give us 0.

$s1="Hello";

print($s1*2); 
print"\n";

# Note: writing print"$s1*2"; will give output as: Hello*2 and not 0.



# If the strings contain numeral values before alphabets, the numeral value will be taken into
# account. Ex. if the string is "12P34", then the value of the string will be considered as 12.
# Similarly, if string is "123P4", value considered will be 123.

$s2="12P34";
$s3="123P4";
print($s2*1);
print"\n";
print($s3*1);
print"\n";






