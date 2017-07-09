use strict;
use warnings;

my $mtu = 1500;
print ('Taille de la data : ');
my $data = <STDIN>;
my $flags = $mtu - 20;
my $tmp;
my $no = 0;
my $fo = 0;
chomp($data);

if ($data < 0 or $data == 0){
    print('Bad input.');
    exit;
}

while ($data > 0 and $data > $mtu-20)
{
    $data = $data - ($mtu - 20);
    $tmp = $mtu - 20;
    if ($no == 0){
        $fo = 0;
    }
    else{
        $fo = (($mtu-20)*($no))/8;
    }
    print ("No : $no | MF : 1 | IPID : X | FO : $fo | Data size : $tmp + 20o flags\n");
    $no++;
}
$tmp = $data;
$fo = (($mtu-20)*($no))/8;
print ("No : $no | MF : 0 | IPID : X | FO : $fo | Data size : $tmp + 20o flags\n");