use strict;
use warnings;
$|=1;
use Data::Dumper;

sub main(){
	my %food= (
		"cats" => "cheese",
		"dogs" => "meat",
		"birds" => "seeds"
	);
	
	#create a tuple
	while(my ($key, $value) = each %food){
		print "$key, $value"."\n";	
	}
	
	my @animals  = keys %food;
	#foreach = for
	foreach my $animal(@animals){
		#access an hash element
		my $value = $food{$animal};
		print $value."\n";
	}
	
}

main();