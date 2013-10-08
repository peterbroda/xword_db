#!/usr/bin/perl
my $infile = $ARGV[0];
my $outfile = "seqn_out";

my $seqno = $infile;
if ($seqno =~ m/gfp/)
{
	$seqno =~ s/^.*\///;
	$seqno =~ s/gfp([0-9]+).*$/\1/;
	$seqno = "GFP_".$seqno;
}
else
{
	$seqno =~ s/^.*\///;
	$seqno =~ s/([0-9]+)\_.*$/\1/;
	$seqno =~ s/^0*//;		#remove leading zeros
	$seqno = "ANOA_".$seqno;
}

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	chomp;

	if (m/Puzzle\.create/)
	{
		s/create\(title/create\(seq\_no\: \'$seqno\'\, title/;
	}
	print OUT $_."\n";
}

close IN;
close OUT;
