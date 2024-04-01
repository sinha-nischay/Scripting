#!/usr/bin/perl


# We can replace all the instance sof a character using translate


$string="10001";		# Original string
$string=~ s/0/9/;		# substituting first 0 with 9
print("$string\n");		
$string=~ tr/0/9/;		# replacing all the remaining 0s with 9s
print("$string\n");
























