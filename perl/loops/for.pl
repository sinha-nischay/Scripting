#!/usr/bin/perl


# For loop exectes in typical fashion


for($a=10; $a<20; $a=$a+1){
print("Value of a is:$a\n");
}



# Here, we will declare an array of names with 7 different names. Then we will print each 
# name using the for loop and the size of the array (i.e. 7)


#@names=("Raghav","yogita","ankit","kunal","jethalal","pradeep","praveen");
@names=(Raghav,yogita,ankit,kunal,jethalal,pradeep,praveen);

$size=@names;                                                 # This will count the number of items in array
							      # OR the size of array
print("Size of array is: $size \n");
for($i=0; $i<$size; $i=$i+1){
print("The name[$i] is: $names[$i]\n");
}




























