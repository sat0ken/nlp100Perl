#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

#13. col1.txtとcol2.txtをマージ

sub readfile {
    my $path = shift @_;

    open(F, "< $path") or die("Error :$!");
    chomp(my @col = <F>);
    close(F);

    return @col;
}

my @col1 = readfile("col1.txt");
my @col2 = readfile("col2.txt");

foreach my $i (0..$#col1) {
    open(F, ">> merged.txt") or die("ERROR :$!");
    print F "$col1[$i] $col2[$i]\n";
    close(F);
}

