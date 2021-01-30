#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use List::Util;

#09. Typoglycemia

my $str = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind .";
my @a   = split / /, $str;
my $shuffle_str = "";

for my $i(@a){
    if(4 < length $i){
        my $j = $i;
        my $first        = substr($j, 0, 1, "");
        my $last         = chop($j);
        my @k            = split //, $j;
        my @shuffle_word = List::Util::shuffle @k;
        $shuffle_str     = $shuffle_str . $first . join('', @shuffle_word) . $last . " ";
    } else {
        $shuffle_str = $shuffle_str . $i . " ";
    }
}

print "$shuffle_str\n";
