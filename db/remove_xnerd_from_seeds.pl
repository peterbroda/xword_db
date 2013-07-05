#!/usr/bin/perl

my $infile = "seeds.rb";
my $outfile = "seeds_out.rb";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	if (!m/sources\s\=\>\sSource\.where\(\:name\s\=\>\s\'The\sCross\sNerd\'/)
	{
		print OUT $_;
	}
}

close IN;
close OUT;
