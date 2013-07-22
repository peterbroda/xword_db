#!/usr/bin/perl

my $infile = $ARGV[0];
my $outfile = "meta_out";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	if (m/\<Clue/)
	{
		chomp;
		s/^.*Ans\=\"\"\>//;
		s/\<\/Clue.*$//;
		s/\'/\\\'/g;
		print OUT "instructions = \'";
		print OUT $_;
		print OUT "\'\n";
	}
	else
	{
		print OUT $_;
	}
}

close IN;
close OUT;
