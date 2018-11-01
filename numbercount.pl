#!/usr/bin/perl
use strict;
use warnings;
my @words;
my $word;
my %word;
my %word_Count;
my $text;
my $filename=shift @ARGV;
my $write=shift @ARGV;
open IN ,$filename  or die "can't read  $filename :$!\n";
#open OUT ,"> $write" or die "can't write  $write :$!\n";
while ($text=<IN>){
@words = ($text =~/(\d+)/g);
foreach $word(@words){
$word_Count{$word}++;
}
}
#foreach $word (sort keys (%word_Count)){
#printf "%-20s %d\n", $word, $word_Count{$word};
#}

foreach my $word (sort {$word_Count{$b} <=> $word_Count{$a}} keys %word_Count) {
 print $word . ": " .  $word_Count{$word} . "\n";
    }


#foreach (sort { $a <=> $b } keys(%word_Count) )
#{

 #   print "key: $_ value: $word_Count{$_}\n"
#}
