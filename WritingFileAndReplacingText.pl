use strict;
use warnings;
$| = 1;

sub main {

	my $input =
'E:\Working folder\My learning\Programming\Perl Programming\codes\PerlProjects\free_novel.txt';
	my $output = 'output.txt';

	#open the file, if it fails to open the file
	#then terminate the program
	open( INPUT, $input ) or die("Input file $input not found\n");
	
	#To create a file, you must concatenate the redirection operator
	#concatenate: string1.string2
	open( OUTPUT, ">" . $output ) or die("Cannot create $output\n");

	#<INPUT> read one line of the file and return it, and also
	#move on to next line
	while ( my $line = <INPUT> ) {

		#=~ /regular expression/
		#if line match(contains) the reular expression
		#\bHe\b   \b is used for word boundary 
		if ( $line =~ /\bHe\b/ ) {
			#replace his to HIS, i means case insensitive, g means global
			#which means replace all occurences
			$line =~ s/his/HIS/ig;
			print OUTPUT $line; #output each line to output.txt
		}

	}
	close(INPUT);
	close(OUTPUT);
}

main();
