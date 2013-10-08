#!/usr/bin/perl

my $infile = $ARGV[0];
my $outfile = size_out;

my $h = "";
my $w = "";
my $size = "";
my $grid = "";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	chomp;
	if (m/Puzzle\.create/)
	{
		if (!m/size\:\s\'/)
		{
			$grid = $_;
			$grid =~ s/^.*grid\:\s\'//;
			$grid =~ s/\'.*$//;
			$w = length((split(/\|/, $grid, 2))[0]);
      			$h = split(/\|/, $grid);
			$size = join("x", "$w", "$h");
			s/\)\s*$/\, size\: \'$size\'\)/;
		}
	}
	print OUT $_."\n";
}

close IN;
close OUT;
