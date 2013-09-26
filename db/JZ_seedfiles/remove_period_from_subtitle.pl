#!/usr/bin/perl

my $infile = $ARGV[0];
my $outfile = "period_out";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	if (m/Puzzle\.create/)
	{ s/\.\s*\'\,\sgrid/\'\, grid/; }
	print OUT $_;
}

close IN;
close OUT;
