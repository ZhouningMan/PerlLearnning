use strict;
use warnings;
$|=1;


#() is not required to make a function
sub main{
	my $input = "test.csv";
	
	#unless evaluate the conditon to be false
	#equivalent code: open( INPUT, $input ) or die("Input file $input not found\n");
	unless(open(INPUT,$input)){
		die("\n Cannot open $input\n");
	}
	
	#read the header and discard it
	<INPUT>;
	
	#<INPUT> read one line per instruction until undef 
	while(my $line = <INPUT>){
		#$_ is the default variable to hold <INPUT> 
		#if you don't declare my $line
		#print $_;
		my @values = split(',', $line);
		#get an element in an array
		print $values[0]."\n";
	}
	
	close(INPUT);
	
}

main();