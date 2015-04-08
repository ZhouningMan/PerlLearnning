use strict;
use warnings;
use LWP::Simple;


sub main(){
	#check whether the file exists or not.
	my $filepPath = 'E:\Working folder\My learning\Programming\Perl Programming\codes\DownloadImages\google.html';
	if(-f $filepPath){
		print "Found file";
	}else{
		print "file not found";
	}
	
}

main();