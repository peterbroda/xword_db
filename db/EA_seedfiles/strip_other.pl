#!/usr/bin/perl

my $infile = $ARGV[0];
my $outfile = "stripped_dash";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	s/xml_grid\.xpf/brokencity/g;
	print OUT;
}

close IN;
close OUT;
