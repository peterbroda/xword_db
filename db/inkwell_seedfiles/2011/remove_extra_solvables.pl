#!/usr/bin/perl

my $infile = $ARGV[0];
my $outfile = solvable_out;
open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	chomp;
	if (m/Entry\.create/)
	{
		s/\)\)\]\,.*$/\)\)\]\)\)/;
	}
	print OUT $_."\n";
}

close IN;
close OUT;
