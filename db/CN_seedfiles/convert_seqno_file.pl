#!/usr/bin/perl

my $infile = "seqnos_all";
my $outfile = "seqnos_all_converted";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	chomp;

	print OUT;
	print OUT " - CN_\n";
}

close IN;
close OUT;
