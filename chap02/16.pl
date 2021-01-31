#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

#16.ファイルをN分割する

open(F, "popular-names.txt") or die("ERROR :$!");
my @lines = <F>;
close(F);

my $split_file = 2;
my $readline   = scalar @lines / $split_file;
my $cnt = 0;

for (1 .. $split_file){
    my @tmp;
    for(1 .. $readline){
        push @tmp, shift @lines;
    } 
    open(F, ">> $_.txt") or die("ERROR :$!");
    print F "@tmp";
    close(F);
}
