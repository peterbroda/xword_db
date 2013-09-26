#!/usr/bin/perl

my $datefile = "all_puz.txt";
my $outfile = "date_out";

open (IN, "<$datefile");
open (OUT, ">$outfile");

my $weeks_past = 250;
my $start_week = $weeks_past*7*24*60*60;
my $sec_to_mon = 3*24*60*60;
my $start_date = time - $start_week - $sec_to_mon;

my $freq = 3;

my $dow = "mon";
my $incr = 0;

while (<IN>)
{
	chomp;

	if (m/232/)
	{ $freq = 2; }

	($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime($start_date + $incr);
	$year += 1900;
	$mon += 1;
	my $puz_date = join("/", $year, $mon, $mday);

	print OUT $_;
	print OUT "###".$puz_date;
	print OUT "###".$dow;
	print OUT "\n";

	if ($freq == 3)
	{
		if ($dow eq "mon")
		{
			$dow = "wed";
			$incr += 2*24*60*60;
		}
		elsif ($dow eq "wed")
		{ 
			$dow = "fri";
			$incr += 2*24*60*60;
		}
		elsif ($dow eq "fri")
		{ 
			$dow = "mon";
			$incr += 3*24*60*60;
		}
	}
	elsif ($freq == 2)
	{
		if ($dow eq "mon")
		{
			$dow = "thu";
			$incr += 3*24*60*60;
		}
		elsif ($dow eq "thu")
		{ 
			$dow = "mon";
			$incr += 4*24*60*60;
		}
	}
}

close IN;
close OUT;

