use strict;
use warnings;
use utf8;

#05. n-gram
my $str = "I am an NLPer";
my @a = split / /, $str;
my @b = split / /, $str;
my @c;
unshift @a, 'aa';
push @a,  'aa';


#文字bi-gram
foreach my $i(@b){
    if (length $i > 1 && length $i == 2 ) {
        push @c, $i;
    } elsif (length $i > 2 ) {
        for my $tmp(0 .. length $i){
            my $tmp_str = substr($i, $tmp, 2);
            push @c, $tmp_str if(length $tmp_str > 1)
        }
    }
}

print "@c\n";

