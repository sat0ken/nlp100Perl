#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

binmode(STDOUT, ":utf8");

my $time = 12;
my $str  = "気温";
my $ondo = 22.4;

print ques_07($time, $str, $ondo) . "\n";

sub ques_07 {
    return $_[0] . "時の" . $_[1] . "は" . $_[2]
}
