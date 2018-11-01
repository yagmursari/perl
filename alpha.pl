#!/usr/bin/perl
use strict;
use warnings;
use utf8;
 
my @words;
my $word;
my %word;
my  %wordCount;
my $text;
open(FILE,"<train.txt") or  die "cannot open input file";
while ($text = <FILE>){
@words = ($text =~/( [a-zA-Z]+)/);  #@words = ($text =~/([a-zA-Z\-]+-)/);

foreach $word (@words){
$wordCount{$word}++;
}
}
foreach $word (sort keys (%wordCount)){

printf "%-31s %d\n", $word, $wordCount{$word};
}
 

