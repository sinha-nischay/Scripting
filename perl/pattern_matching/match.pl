#!/usr/bin/perl

# Here, we will match the pattern with the elements stores in a string, using '=~'
# Ex. to match ram in the string names, we will write: $names=~ m/ram/;
# We will print 3 different cases:
# 	a) We will print the exact matched character of the string ($&)
# 	b) We will print the part of the string before the match ($`)
# 	c) We will print the part of the string after the match ($')

$string="perl tutorial by abc institute";

$string=~ m/by/;				# searching and matching 'by'

print("Matched:$&\n");
print("Before Match:$`\n");
print("After Match:$'\n");






















