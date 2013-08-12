#!/usr/bin/perl

my $infile = $ARGV[0];
my $outfile = "type_out.rb";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	if (m/Puzzle\.create/)
	{
		if ($infile =~ m/themeless/)
		{
			s/\)\s*$/\, puzzle_type\: \'freestyle\'\)\n/;
		}
		elsif (m/instructions/)
		{			
			s/\)\s*$/\, puzzle_type\: \'meta\'\)\n/;
		}
		else
		{
			s/\)\s*$/\, puzzle_type\: \'themed\'\)\n/;
		}

	}

	print OUT;
}

close IN;
close OUT;
