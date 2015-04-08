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

		#=~ /regular expression/
		#if line match(contains) the reular expression
		#. or ? can match any characters
		if ( $line =~ /d?s/ ) {
			print $line;
		}

	}

	close(INPUT);
}

main();
