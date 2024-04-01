#!/usr/bin/perl


# with 'foreach' loop we don't need to specify each and every element of the array.
# It will itself traverse the array one by one.


# We will declare an array with 7 names in it. Then we will use foreach using a variable 'employee'.
# The variable 'employee' will iterate over the array, and we can reference it using the variable
# 'employee' itself.




@names=(Raghav,yogita,ankit,kunal,jethalal,pradeep,praveen);
foreach $employee(@names){
print ("The name of the employee: $employee\n");
}











































