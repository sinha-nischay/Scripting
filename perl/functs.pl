#!/usr/bin/perl


# 1. Sorting: a) We can sort a random group of  numners in ascending order using 'sort' function

@num=(9,2,8,4,1);
@sorted_num= sort @num;
print("@sorted_num");
print"\n";


#             b) We can also sort alphabets in the dictionary order


@names=("ram","shyam","mohan","sohan","jethalal","tarak mehta");
@sorted_names= sort @names;
print("@sorted_names");
print"\n";

# 	      We can also get descending/reverse dictionary order using 'reverse sort' function

@rev_sort_num=reverse sort ("@num");
print("@rev_sort_num");
print"\n";

@rev_sort_names=reverse sort @names;
print("@rev_sort_names");
print"\n";


# 2. Join: The command join is used to merge the items.

# 	   Suppose, we want to join items-"this", "is", "a" & "string" to create a string. But we want 
# 	   spaces in between them. So, we are going to give the first item as space and then the rest 
# 	   of the items

$string1=join(" ","this","is","a","string");
print($string1);
print"\n";



# 	   We can also use any other separator instead of space such as colon(::)

$string2=join("::","This","is","separated","by","colon");
print($string2);
print"\n";


# 	   We can also join the items in a list with any other item which is not in the list with 
# 	   any desired separator.
# 	   Here, we will join the list given below with another string-'list', with space as a separator


@list1=("Here","is","a");
$string3=join(" ", @list1,"list");
print($string3);
print"\n";


# 3. Split: This is just the opposite of join


# 	    Here, we will define a string separated by '::'. Then we will split the string into 
# 	    individual items of an array. Then we will print the array to see its results


$string4="words::are::separated::by::colons";
@array1=split(/::/,$string4);
print("@array1");                               #using "" to get space between the items
print"\n";

# 	    We can also split strings which have no sapces in between by using null as a
# 	    separator.


$string5="abcde";
@array2=split(//,$string5);
print("@array2");
print "\n"; 

















