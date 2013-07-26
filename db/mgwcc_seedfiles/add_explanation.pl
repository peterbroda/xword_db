#!/usr/bin/perl

my $infile = $ARGV[0];
my $outfile = "meta_out";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	if (m/Puzzle\.create/)
	{
		chomp;

		s/\)\s*$/\, explanation\: explanation\)\n/;
		print OUT qq{explanation = 'Coming soon...'\n};
		print OUT $_;
	}
	else
	{
		print OUT $_;
	}
}

close IN;
close OUT;
