#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

#14.先頭からN行を出力

open(F, "popular-names.txt") or die("ERROR :$!");
my @hightemp = <F>;
close(F);

my $read_line = 5;
my $cnt  = 0;

while($cnt < $read_line){
    print $hightemp[$cnt];
    $cnt++;
}
