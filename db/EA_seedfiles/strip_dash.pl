#!/usr/bin/perl

my $infile = $ARGV[0];
my $outfile = "stripped_dash";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	s/GIRLS\_\-\_REMIX/GIRLS\_REMIX/g;
	print OUT;
}

close IN;
close OUT;
