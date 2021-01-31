#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

#18.各行を3コラム目の数値の降順にソート

my $headers = ['col1', 'col2', 'col3', 'col4'];
my $file    = "popular-names.txt";

my @recs = parse_file($file, $headers);
@recs = sort{$b->{col3} <=> $a->{col3}} @recs;

for my $i(@recs){
    print join(' ',@{$i}{@$headers}) . "\n";
}

sub parse_file {
    my($file, $headers) = @_;
    open(my $fh, "<", $file) or die("ERROR:$!");

    my $recs = [];
    while(my $line = <$fh>){
        chomp $line;
        my $items = {};
        @{$items}{@$headers} = split /\t/, $line;
        push @$recs, $items;
    }
    close $fh;
    wantarray ? return @$recs : $recs;
}
