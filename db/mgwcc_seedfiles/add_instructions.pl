#!/usr/bin/perl

my $infile = $ARGV[0];
my $outfile = "meta_out";

open (IN, "<$infile");
open (OUT, ">$outfile");

my $series_number = $infile;
$series_number =~ s/^([0-9]+)\_seeds\.rb/$1/;

while (<IN>)
{
	if (m/Puzzle\.create/)
	{
		chomp;

		s/\)\s*$/\, instructions\: instructions\)\n/;
		if ($series_number < 241)
		{
			print OUT qq{instructions = 'Coming soon...'\n};
		}
		print OUT $_;
	}
	else
	{
		print OUT $_;
	}
}

close IN;
close OUT;
