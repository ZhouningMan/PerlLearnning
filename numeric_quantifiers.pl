use strict;
use warnings;
$|=1;


sub main(){
	#*  0 or more greedy match that satisfy a pattern
	#+ 1 or more match 
	#*? 0 or more non-greedy match that satisfy a pattern
	#{5} 5 of the preceding characters /d{5}
	#{3,6} match at least 3 and at most 6 preceding characters \d{3,6}
	#{3,} match at least 3 preceding characters
	
}
main();