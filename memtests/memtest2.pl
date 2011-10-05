#!/usr/bin/perl -w
use strict;

my $INNER = 10000;
my $LOOPS = 1*1000*1000;

sleep 1;

my %aa;
for (my $i = 0; $i < $LOOPS; $i++) {
  my $a = ' ' x $INNER;
  $aa{$i % 1000} = $a;
}
