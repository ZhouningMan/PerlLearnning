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
	
	#array is not fixed size in perl
	my @lines = ();
	my $count = 0;
	
	#<INPUT> read one line per instruction until undef 
	while(my $line = <INPUT>){
		
		#chmop remove trailing seperator
		chomp($line);
		
		
		#use regular expression to split
		#but how to remove preceding space???
		my @values = split(/\s*,\s*/, $line);

		#$lines[$count]= $line;
		#$count++;
		
		#push an element into an array
		push(@lines, $line);
	}
	close(INPUT);
	
	
	foreach my $line(@lines){
		print $line."\n";
	}
}

main();

