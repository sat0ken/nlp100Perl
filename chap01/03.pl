#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

#03. 円周率
my $str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.";
my @a = split / /, $str;
my @b;

for my $i (@a){
  push @b, length $i;
}

print "@b\n";
