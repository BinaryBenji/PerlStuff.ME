use strict;
use warnings;
# <-- *** Benjamin ZMUDA S4SR LOLMDR *** --> 
use Data::Dumper qw(Dumper);
use LWP::Simple;   
use LWP::UserAgent ();

my $num_args = $#ARGV + 1;
if ($num_args != 1) {
    print "\nUsage: ipnet.pl IP/MASK\n";
    exit;
}
else
{
	my ($all) = @ARGV;
	my @ipmask = split /\//, $all;
	#printf "%-10s %s\n", "IP : ",$ipmask[0];
	my $mask = $ipmask[1];
	#my $url = "http://itinet.fr/thire/cours/exercices_perl/acces.log";
	my $url = "https://helloacm.com/api/ipcalc/?s=${all}";
	#print "URL : $url\n";
	#my $content = get($url);
	#print $content;
	if ($mask > 32 || $mask < 0)
	{
		print "Invalid mask";
		exit;
	} 

	my $ua = LWP::UserAgent->new;
	$ua->timeout(10);
	$ua->env_proxy;
	$ua->agent('Mozilla/5.0'); 
	#my $req = new HTTP::Request->new(GET => "$url");
	#print $req;
	my $res = $ua->get($url);
	my $allres;
	if ($res->is_success)
	{
	  	$allres = $res->as_string;
	}
	else {
	  	print "Failed: ", $res->status_line, "\n";
	}
	#print $allres;
	my @tabres = split /\n/, $allres;
	#my @trueres = split / /, $tabres[24];
	#chomp($tabres[24]);
	my @yeah = split /\\n/, $tabres[24];
	$yeah[0] = substr($yeah[0],1);
	print "$yeah[0]\n";
	print "$yeah[1]\n";
	print "$yeah[2]\n";
	#print "$yeah[3]\n";
	print "$yeah[4]\n";
	print "$yeah[5]\n";
	print "$yeah[6]\n";
	print "$yeah[7]\n";
	print "$yeah[8]\n";
}