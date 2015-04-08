use strict;
use warnings;
$| =1 ; #turn off buffering
use LWP::Simple;


#check whether the file exists or not.
sub main() {

	#create a local array
	my @files =
	  ( 'E:\Blackrock_Alladin.pdf', 'E:\Working folder', 'E:\missing.txt' );

	foreach my $filepPath (@files) {
		if ( -f $filepPath ) {
			print "Found file $filepPath\n";
		}
		else {
			print "file not found $filepPath\n";
		}
	}
	
	#create a local variable
	my $filepPath = 'E:\Working folder\My learning\Programming\Perl Programming\codes\DownloadImages\google.html';

}

main();
