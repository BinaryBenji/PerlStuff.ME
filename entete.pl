use strict;
use warnings;
# <-- *** Benjamin ZMUDA S4SR LOLMDR *** --> 
my $dir = 'C:\Users\Quercitron\Desktop\perl';
my $count = 0;
opendir(DIR, $dir) or die "Could not open directory.";
while (my $file = readdir(DIR))
{ 
    if ($file eq "." || $file eq "..")
    {
        print ("");
    }
    else
    {
        local @ARGV = ("$dir/$file");
        local $^I = '.tmp'; # Création de fichier temporaires au cas ou
        while(<>)
        {
            if ($. == 3) 
            {
                print "# <-- *** Benjamin ZMUDA S4SR LOLMDR *** --> \n";
            }
            else
            {
                print;
            }
        }
    }

}
closedir(DIR);