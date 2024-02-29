#!/usr/bin/perl


# Here, we will first find the character and then substitute/replace it with another charater

# Here, we want to replace 'good' with 'awesome'

$string="You have become good!";
print("Initial String:$string\n");
$string=~ s/good/awesome/;
print("Final String:$string\n");


# NOTE: The substituion operator will only search and replace the first match it finds. If we want
# to replace all the instances of the same character, we need to use translate!




















