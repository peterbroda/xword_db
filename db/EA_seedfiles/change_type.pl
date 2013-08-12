#!/usr/bin/perl

my $infile = $ARGV[0];
my $outfile = "type_out.rb";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	if (m/Puzzle\.create/)
	{
		s/type\:/puzzle\_type\:/;
	}

	print OUT;
}

close IN;
close OUT;
