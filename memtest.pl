#!/usr/bin/perl -w
use strict;

my $INNER = 10000;
my $LOOPS = 1*1000*1000;

sleep 1;

for (my $i = 0; $i < $LOOPS; $i++) {
  my $a = ' ' x $INNER;
}
