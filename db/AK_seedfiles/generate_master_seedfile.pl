#!/usr/bin/perl
use strict;
use warnings;

my $year = $ARGV[0];
my $infile = "seedfiles.rb";
my $outfile = "AK_all_seedfiles.rb";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	chomp;
	print OUT qq{puts "Processing $_...\\n"\n};
	print OUT qq{require "/home/peter/xword_db/db/AK_seedfiles/round_2/};
	print OUT $_;
	print OUT qq{"};
	print OUT "\n";
}

close IN;
close OUT;
