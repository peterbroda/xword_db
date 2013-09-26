#!/usr/bin/perl

my $datefile = "all_dates_correct.txt";

open (DATES, "<$datefile");

while (<DATES>)
{
	chomp;
	@this_puz_info = split("###");

	my $infile = $this_puz_info[0];
	my $outfile = "date_out";

	open (IN, "<$infile");
	open (OUT, ">$outfile");

	while (<IN>)
	{
		chomp;

		$this_puz_info[1] =~ s/\//\-/g;
		s/publication\_date\:\s\'\'/publication\_date\: \'$this_puz_info[1]\'/;

		print OUT $_."\n";
	}

	close OUT;
	close IN;

	system("mv", "date_out", $infile);
}

close DATES;

