#!/usr/bin/perl


# Grep command is used to filter out the part we want to see.

# Suppose an array named mynames which contains the names of employees an their employee ids

@mynames=(jacob,radheshyam,baburao,jethalal,vivek,vikram,alexander,jyoti,9878,9987,9088,1123);
print("@mynames\n");


# Now, if we want to print just the names and not the employee ids, then:
# We use the grep keyword. We need only those values which end in a-z. So we write [a-z]
# to specify that the alphabet could be anything from a-z, and we use $ sign next to it to specify
# that we are looking at the ending of an element.
# Thus, [a-z]$ points to all the elements which end in alphabets.
# Also, we write @mynames, as we need to specify the array which we need to search from!

@grepnames=grep(/[a-z]$/,@mynames);
print("@grepnames\n");


# Suppose we want the names ending with 'm' only:

@grepnames1=grep(/m$/,@mynames);
print("@grepnames1\n");


# Suppose you want to print names beggining with 'v', then we can use '^' symbol instead of '$'

@grepnames2=grep(/^v/,@mynames);
print("@grepnames2\n");


# Suppose you want to print the names not starting with 'v', then we need to put '!' sign only:

@grepnames3=grep(!/^v/,@mynames);
print("@grepnames3\n");


# Now, suppose you want to print only employee ids, then we can use \d. This will accept only integers
@grepnames4=grep(/\d/,@mynames);
print("@grepnames4\n");
















