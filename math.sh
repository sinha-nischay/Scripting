#!/bin/bash

#in python to add we simply write 30+40. In bash we need to write "expr 30 + 40"
a=10
b=20
echo "The sum of 10 and 20 is: $(expr $a + $b)" 
echo "The difference of 10 and 20 is: $(expr $a - $b)"
echo "The quotient of 10 / 20 is: $(expr $a / $b)"

#adding space is very imp, ex. 30 + 40 and not 30+40

#NOTE: to multiply we need to type \* and not *
echo "The product of 10 and 20 is: $(expr $a \*  $b)"

