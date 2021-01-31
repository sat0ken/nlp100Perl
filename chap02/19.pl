#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

#19.各行の1コラム目の文字列の出現頻度を求め，出現頻度の高い順に並べる

open(F, "popular-names.txt") or die("ERROR :$!");
my @col1;

while( <F> ){
    chomp($_);
    my @tmp = split / /, $_;
    foreach( @tmp ){
        $_ =~ s/\s+/ /g;
        my @tmp1 = split / /, $_;
        push @col1, $tmp1[0];
    }
}
close(F);

my %hash;

for my $i(@col1){
    if (exists $hash{$i}){
        $hash{$i} = $hash{$i} + 1;
    } else {
        $hash{$i} = 1;
    }
}

for my $key(sort {$hash{$b} <=> $hash{$a}} keys %hash) {
    print "$key $hash{$key}\n";
}
