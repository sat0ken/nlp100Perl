#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

#17.1列目の文字列の異なり

open(F, "popular-names.txt") or die("ERROR :$!");
chomp(my @lines = <F>);
close(F);

my @col1;

foreach(@lines){
    my @line = split /\t/, $_;
    push @col1, $line[0];
}

my %hash;
my @sort = grep{!$hash{$_}++} @col1;

foreach(@sort){
    print $_ . "\n";
}
