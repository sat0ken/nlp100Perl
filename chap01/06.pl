#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

binmode(STDOUT, ":utf8");

#06. 集合
my $str  = "paraparaparadise";
my $str1 = "paragraph";
my (@a, @b, @c, @d);

#bi-gram Xを生成
foreach(0 .. length $str){
    my $tmp = substr($str, $_, 2);
    push @a, $tmp if(length $tmp > 1);
}

#bi-gram Yを生成
foreach(0 .. length $str1){
    my $tmp = substr($str1, $_, 2);
    push @b, $tmp if(length $tmp > 1);
}

#seが含まれるか調べる
if (grep {$_ eq 'se'} @a){
    print "X is True\n";
} else {
    print "X is False\n";
}
if (grep {$_ eq 'se'} @b){
    print "X is True\n";
} else {
    print "X is False\n";
}

#和集合
for my $i (@a) {
    unless(grep {$_ eq $i }@c){
    push @c, $i;
    }
}

for my $i (@b) {
    unless(grep {$_ eq $i} @c){
    push @c, $i;
    }
}

print "和集合 : ";
print "@c\n";

#積集合
for my $i(@a) {
    if( grep {$_ eq $i } @b){
        push @d, $i unless( grep {$_ eq $i} @d)
    }
}

print "積集合 : ";
print "@d\n";


#差集合 b-a
for my $i(0 .. ($#b)){
    if( grep {$_ eq $b[$i]} @a){
        delete $b[$i];
     }
}

print "差集合 : ";
for my $i(0 .. ($#b)){
    if(defined($b[$i])){
        print "$b[$i] : ";
    }
}
print "\n";
