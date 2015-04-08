use strict;
use warnings;
$|=1;
use  Data::Dumper;

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
		
		#chmop remove trailing seperator
		chomp($line);
		print $line."\n";
		
		#$_ is the default variable to hold <INPUT> 
		#if you don't declare my $line
		#print $_;
		
		#use regular expression to split
		#but how to remove preceding space???
		my @values = split(/\s*,\s*/, $line);
	
		#return a string and store the values in the dumper
	   print Dumper(@values);
		
	}
	close(INPUT);
	
}

main();

