#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

binmode(STDOUT, ":utf8");

#01. 「パタトクカシーー」
my $str = "パタトクカシーー";

for my $i (0 .. (length $str)){
    if ($i % 2 == 0){
        print substr($str, $i, 1);
    }
}
print "\n";
