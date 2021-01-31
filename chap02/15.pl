#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

#15.末尾のN行を出力

open(F, "popular-names.txt") or die("ERROR :$!");
my @hightemp = <F>;
close(F);

my $read_line = 5;
my $read  = scalar @hightemp - $read_line;

while($read < scalar @hightemp){
    print $hightemp[$read];
    $read++;
}
