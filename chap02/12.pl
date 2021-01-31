#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

#12. 1列目をcol1.txtに，2列目をcol2.txtに保存
sub writetxt {
    my ($path, @data) = @_;
    open(F, "> $path") or die("Error :$!");
    for (@data) {
        print F $_ . "\n";
    }
    close(F);
}

open(F, "< popular-names.txt") or die("Error :$!");
my @lines = <F>;
close(F);

my (@col1, @col2);

for(@lines){
    chomp($_);
    $_ =~ s/\s+/ /g;
    my @tmp = split / /, $_;
    push @col1, $tmp[0];
    push @col2, $tmp[1];
}

writetxt("col1.txt", @col1);
writetxt("col2.txt", @col2);
