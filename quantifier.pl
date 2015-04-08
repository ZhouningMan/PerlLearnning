use strict;
use warnings;
$| = 1;

sub main {

	my $file =
'E:\Working folder\My learning\Programming\Perl Programming\codes\PerlProjects\free_novel.txt';

	#open the file, if it fails to open the file
	#then terminate the program
	open( INPUT, $file ) or die("Input file $file not found\n");

	#<INPUT> read one line of the file and return it, and also
	#move on to next line
	while ( my $line = <INPUT> ) {

		#o+ match one or more  o
		#o* match zero or more o
		#s.*n greedy matching find the maximum number of characters that satifisy the pattern
		#s.*?n non-greedy matching. find the minimum number of characters that satifisy the pattern
		if ( $line =~ /(s.*?n)/) {
			print $1."\n";

		}
		
	}

	close(INPUT);
}

main();
