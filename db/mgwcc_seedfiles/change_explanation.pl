#!/usr/bin/perl

my $infile = $ARGV[0];
my $outfile = "meta_out";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	if (m/explanation\s\=/)
	{
		s/Coming\ssoon\.\.\./\<MA\>\<\/MA\>\<TEXT\>Coming soon...\<\/TEXT\>/;
		print OUT $_;
	}
	else
	{
		print OUT $_;
	}
}

close IN;
close OUT;
