#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

my $enc_os = 'utf-8';
binmode STDOUT, ":encoding($enc_os)";

#02. 「パトカー」＋「タクシー」＝「パタトクカシーー」
my $str1 = "パトカー";
my $str2 = "タクシー";

for my $i (0 .. length $str1){
    print substr($str1, $i, 1);
    print substr($str2, $i, 1);
}
print "\n";
