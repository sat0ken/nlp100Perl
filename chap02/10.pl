#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

#10. 行数のカウント
open(F, "< popular-names.txt") or die("Error :$!");
my @lines = <F>;
close(F);

print scalar @lines . "\n";
