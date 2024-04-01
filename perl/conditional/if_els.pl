#!/usr/bin/perl

# Here, we will look at the conditional statement: if-else



# Here, we will declare the salary of an employee. If the salary is greater than 10000,
# then the person will be classified as manager. If the salary is more than 5000 but less than
# 10000, then the person will be classified as developer. If the salary is less than 5000, the
# employee is classified as staff.


$salary=10500;

if ($salary>10000) {

print "The employee is Manager\n";
}

elsif (5000<$salary && $salary<10000){              # Note it is written 'elsif' and not 'elseif'
print "Employee is a developer\n";
}

else {
print "Employee is staff\n";
}













































