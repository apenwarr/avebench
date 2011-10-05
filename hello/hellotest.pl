#!/usr/bin/perl -w
use strict;

open FP, '<hello.txt';
printf <FP>;
close FP;
