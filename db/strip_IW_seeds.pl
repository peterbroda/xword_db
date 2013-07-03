#!/usr/bin/perl

my $infile = "IW_2008_seeds.rb";
my $outfile = "IW_2008_seeds_stripped";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	s/^\s*Puzzle\.create\(//;
	s/\)\s*$//;
	print OUT $_."\n";
}

close IN;
close OUT;
