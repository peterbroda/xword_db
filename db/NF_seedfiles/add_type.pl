#!/usr/bin/perl

my $infile = $ARGV[0];
my $outfile = "type_out.rb";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	if (m/Puzzle\.create/)
	{
		if ($infile =~ m/hemeless/)
		{
			s/\)\s*$/\, puzzle_type\: \'freestyle\'\)/;
		}
		elsif ($infile =~ m/ryptic/)
		{			
			s/\)\s*$/\, puzzle_type\: \'cryptic\'\)/;
		}
		else
		{
			s/\)\s*$/\, puzzle_type\: \'themed\'\)/;
		}

	}

	print OUT;
}

close IN;
close OUT;
