#!/usr/bin/perl


# untill loop executes till the given condition is false.
# NOTE: untill is written as 'until'



# Here, we are going to give the condition $a>10. The code inside untill loop will
# execute if value of a is less than 10. As soon as the value of a reaches 11, untill
# loop will stop.


$a=5;
until ($a>10){
print("Value of a is: $a\n");
$a=$a+1;
}

































