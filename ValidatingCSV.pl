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
	LINE: while(my $line = <INPUT>){
		
		#check whether it is a blank line, if it is go to next iteration
		$line =~ /\S+/ or next;
		
		#chmop remove trailing seperator
		chomp($line);
		
		#use regular expression to split
		#but how to remove preceding space???
		my @values = split(/\s*,\s*/, $line);
		
		#use values in a scalar context, the number of 
		#elements are used
		if(scalar(@values)<3){
			# don't use "Invalid line" + $line 
			#concatenation is . not +
			print "Invalid line: $line\n";
			next;
		}
		
		foreach my $value(@values){
			$value =~ /\S+/ or next LINE;
		}
		
		my ($name, $payment, $date) = @values;
	
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

