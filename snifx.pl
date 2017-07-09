use strict;
use warnings;

my $date = qx(date);
my @words = split /\ /, $date;
my $date_heure="${words[1]}${words[2]}_${words[4]}";

print("Indiquez le port : ");
my $port_dst=<STDIN>;
print("Indiquez une IP : ");
my $ip_dst = <STDIN>;

chomp($port_dst);
chomp($ip_dst);
#system("touch /opt/flux/${date_heure}_${port_dst}_${ip_dst}");
my $cmd="tcpdump -i ens160 -w /opt/flux/${date_heure}_${port_dst}_${ip_dst}.pcap dst $ip_dst and port $port_dst";
#print($cmd);
system($cmd);
#tcpdump -i ens160 -w /opt/flux/lol.pcap dst 10.10.10.170
