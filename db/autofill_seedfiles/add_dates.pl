#!/usr/bin/perl

my $datefile = "dates.txt";

open (DATES, "<$datefile");

my $curr_date = "";

while (<DATES>)
{
	chomp;
	s/\r//;
	if (m/^20/)
	{
		$curr_date = $_;
	}
	else
	{
		my $infile = $_;
		my $outfile = "date_out";
		open (IN, "<$infile");
		open (OUT, ">$outfile");
		while (<IN>)
		{
			if (m/Puzzle\.create/)
			{
				s/publication\_date\:\s\'\'/publication\_date\: \'$curr_date\'/;
			}
			print OUT;
		}
		close IN;
		close OUT;
		system("mv", "date_out", $infile);
	}
}
close DATES;
