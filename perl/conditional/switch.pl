#!/ce/cde/prod/bin/perl

# NOTE: You must write '#!' as the very first line in the code, else it will show error!

# switch statement is just like case statement in verilog


use Switch;
$var = 30;
@array = (10, 20, 30);
%hash = ('key'=> 10, 'key'=>20);
switch($var){
	case 10		{print "numner 100\n"}
	case "a"	{print "string a\n"}
	case [1..10,42]	{print "number is discontinuous list\n"}
	case (\@array)	{print "number is in array list\n"}
	case (\%hash)	{print "entry is in hash\n"}
	else		{print "previous case not true\n"}
}




























