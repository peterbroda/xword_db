#!/usr/bin/perl
my $infile = $ARGV[0];
my $outfile = "seqn_out";

my $seqno = $infile;
$seqno =~ s/^.*\///;
if ($seqno =~ m/^[0-9]/)
{ 
  $seqno =~ s/([0-9]+).*$/\1/;
  $seqno =~ s/^0*//;		#remove leading zeros
  $seqno = "BEQ_".$seqno;
}
else
{ $seqno = "BEQguest_"; }

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
