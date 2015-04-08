use strict;
use warnings;
$|=1;
use Data::Dumper;


sub main(){
	my %hash1 = (
		"cat" => "meat",
		"dog" => "seeds",
		"fish" => "worms"
	);
	
	my %hash2 =(
		"Money" =>"Good",
		"Food" =>"Better",
		"Happiness" =>"Best"
	);
	
	my @test;
	#push a hash table into an array
	push(@test, \%hash1);
	$test[1] = \%hash2;
	
	print Dumper(@test);
	#the two referencing techniques are the same
	print $test[0]->{"cat"};
	print $test[0]{"cat"};
}

main();