#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

#11. タブをスペースに置換
open(F, "< popular-names.txt") or die("Error :$!");
my @lines = <F>;
close(F);

for my $i (@lines){
    if ($i =~ /\t/){
        $i =~ s/\s+/ /g;
        print "$i\n";
    }
}
