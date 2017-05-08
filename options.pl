use Getopt::Long;
# <-- *** Benjamin ZMUDA S4SR LOLMDR *** -->
use strict;
use warnings;

my $verbose = 'no';
my $l = 'none';
my $nb  = 'valeur par defaut';

GetOptions ("nb=i" => \$nb,"l=s" => \$l, "verbose"  => \$verbose) ;

if ($verbose eq 'no')
{
	print "mode normal\n";
}
else 
{
	print "mode verbose\n";
}

print "nb=$nb\n";
print "l=$l\n";
