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
	
	my @data;
	
	#<INPUT> read one line per instruction until undef 
	while(my $line = <INPUT>){
		
		#chmop remove trailing seperator
		chomp($line);
		
		#use regular expression to split
		#but how to remove preceding space???
		my ($name, $payment, $date) = split(/\s*,\s*/, $line);
	
		my %values = (
			"Name" =>$name,
			"Payment" =>$payment,
			"Date" =>$date,
		);
	
		push(@data, \%values);
	
	}
	close(INPUT);
	print Dumper(@data);
#	foreach my $line(@data){
#		print Dumper($line);
#	}
	
#you can have variable with same name as long as they are differnt type.	
}

main();

