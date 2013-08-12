#!/usr/bin/perl
use strict;
use warnings;

my $infile = "new_seedfiles.rb";
my $outfile = "EA_all_seedfiles.rb";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	chomp;
	print OUT qq{puts "Processing $_...\\n"\n};
	print OUT qq{require "/home/peter/xword_db/db/EA_seedfiles/};
	print OUT $_;
	print OUT qq{"};
	print OUT "\n";
}

close IN;
close OUT;
