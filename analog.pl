use strict;
# <-- *** Benjamin ZMUDA S4SR LOLMDR *** --> 
use LWP::Simple;
use Data::Dumper qw(Dumper);

my $fh = join("", <STDIN>);
my @lines = split /\n/, $fh;

my @tab;
my $cpt;
my $word;
my $i = 0;
my $j = 1;

foreach my $line (@lines) #Cuts end and start
{
	($line = $line) =~ s/.+?(?=\[)//g;
	($line = $line) =~ s/\+(.*)//g;
	$line = substr($line,1,17);
	push @tab, $line;
}

while ($tab[$i])
{
	while ($tab[$i] eq $tab[$i+1])
	{	
			$j++;
			$i++;
	}
	print("$tab[$i] : $j hits \n");
	$j = 1;
	$i++;
}