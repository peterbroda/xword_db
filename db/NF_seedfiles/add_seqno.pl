#!/usr/bin/perl
my $infile = $ARGV[0];
my $outfile = "seqn_out";

my $seqno = $infile;
$seqno =~ s/^.*\///;
$seqno =~ s/Puzzle\_([0-9]+).*$/\1/;
$seqno = "NF_".$seqno;


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
