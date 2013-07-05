#!/usr/bin/perl

my $infile = "AV_old_all_seeds.rb";
my $outfile = "AV_seeds_fixed.rb";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	s/Frances\sHeaney/Francis Heaney/g;
	print OUT $_;
}

close IN;
close OUT;

