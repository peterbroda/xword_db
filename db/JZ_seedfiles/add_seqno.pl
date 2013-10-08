#!/usr/bin/perl
my $numbers_in = "numbers_manifest";
my $numbers_out = "numout";
my $infile = $ARGV[0];
my $outfile = "seqn_out";

open (IN, "<$infile");
open (OUT, ">$outfile");

open (NIN, "<$numbers_in");
open (NOUT, ">$numbers_out");

my $seqno;
my $new_seqno;

while (<NIN>)
{
	chomp;
	$seqno = $_;
	$new_seqno = $seqno + 1;
	$seqno = "JNZ_".$seqno;
}
print $seqno;
print "\n";
print $seqno + 1;
print NOUT $new_seqno;

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

close NIN;
close NOUT;

system("mv", $numbers_out, $numbers_in);
