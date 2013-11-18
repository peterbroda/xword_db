#!/usr/bin/perl

use warnings;
use strict;

my $infile = "2030_all_seeds.rb";
my $outfile = "";
open (IN, "<$infile");

while (<IN>)
{
	if (m/Array\.new/)
	{
		$outfile = $_;
		$outfile =~ s/clues\_//;
		$outfile =~ s/\n//;
		$outfile =~ s/\r//;
		$outfile =~ s/\s\=\sArray\.new//;
		$outfile = $outfile."_seeds.rb";
		open (OUT, ">$outfile");
		print OUT $_;
	}
	elsif (m/Puzzle\.create/)
	{
		print OUT $_;
		close OUT;
	}
	else
	{
		print OUT;
	}
}

close $infile;
