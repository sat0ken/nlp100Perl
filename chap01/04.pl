use strict;
use warnings;
use utf8;

#04. 元素記号
my $str = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.";
my @a = split / /, $str;
my @b = qw/1 5 6 7 8 9 15 16 19/;
my %c;
my @d;

for my $i (0 .. ($#a)){
    if (grep {$_ eq $i + 1} @b) {
        $c{$i + 1} = substr ($a[$i], 0, 1);
    } else {
        $c{$i + 1} = substr ($a[$i], 0, 2);
    }
}

@d = sort {$a <=> $b} keys %c;

for my $j (@d){
     print "$c{$j} : $j\n";
}
