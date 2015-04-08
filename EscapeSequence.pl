use strict;
use warnings;
$| = 1;

sub main {
	#\d digit 
	#\s single whitespace can be tap, space
	#\S non-whitespace character
	#\w alphanumeric including _
	
	
	my $text = 'I am 	117 years old tomorrow';
	#find 117 
	if($text =~ /(\s+\d+)/g){
		print $1;
	}
}

main();
