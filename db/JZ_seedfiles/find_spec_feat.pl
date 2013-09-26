#!/usr/bin/perl

my $infile = $ARGV[0];
my $readfile = "spec_feat";
my $outfile = "spec_feat_out";

open (IN, "<$infile");
open (READ, "<$readfile");
open (OUT, ">$outfile");

while (<READ>)
{
	print OUT $_;
}

while (<IN>)
{
	if (m/spec_feat\s\=/)
	{ print OUT $infile."\n"; }
}

close IN;
close READ;
close OUT;
