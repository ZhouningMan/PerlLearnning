use strict;
use warnings;
use Data::Dumper;

$|=1;




sub main(){
	#hash table
	#no order
	#key => value
	my %months = (
		"Jan" => 1,
		"Feb" => 2,
		"Mar" => 3,
		"Apr" => 4,
		"May" => 5,
	);
	
	#how to access an hash table element
	#{} bracket is used
	print $months{"Jan"}."\n";
	
	#return the keys of an array
	my @months =  keys %months;
	
	
	foreach my $month(@months){
		my $value = $months{$month};
		print $value."  ";  #one type output: 1 3 2 5 4 1
	}
	
	#to declare two local variables 
	#each function on hash table return a tuple
	while(my ($key, $value) = each %months){
		print "\n$key: $value"
	}
	
}

main();
