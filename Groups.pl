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

		#$1 refer to the substrings that matched the pattern of first group
		if ( $line =~ /(i..a.)(d.c)/) {
			print $1."\n";
			print $2."\n";
		}
		
	}

	close(INPUT);
}

main();
