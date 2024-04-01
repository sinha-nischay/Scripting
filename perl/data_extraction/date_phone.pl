#!/usr/bin/perl

# Here, we are going to search and extract phone numbers and dates. Dates are of the format dd.mm.yyyy and 
# phone numbers are of the format dd.dddddd.

$text="Every language is unique in different ways. In English language there are words that spell the same, pronounce the same but have different meanings. Date of 14.2.1997 was awesome. One word that I come across almost everyday is the word date. The word date has an everyday impact on me as well as cultural impact on me. The phone number is 54.343321. I believe the most valuable and scarce resource we know of is time. The way we measure time is by dates. We watch them as they go and count them as they get near which makes them as equally valuable as time.";


# Date search: \d specifies to search for one integer. \d+ means there can be more than one integer
# 		Also, day, month & year have dots between them. So we need to specify the dots also. 

($date)=($text=~ /(\d+\.\d+\.\d+)/);
print("The date found is:$date\n");

# Similarly, we will find the phone number. But this time instead of specifying any number of integers, we
# will specify exact number of integers. Ex. \d{2} implies exact 2 integers and so on

($phone)=($text=~ /(\d{2}\.\d{6})/);
print("The phone number is:$phone\n");























