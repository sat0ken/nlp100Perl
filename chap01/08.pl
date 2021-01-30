use strict;
use warnings;
use utf8;

#08. 暗号文

my $str = "zzzzz";

unless( $str =~ /^[a-z]*$/ ) {
    print "$str\n";
} else {
    my @array = unpack "C*", $str;
    for my $i(@array) {
        my $a = 219 - $i;
        print pack "C*", $a ;
    }
    print "\n";
}
