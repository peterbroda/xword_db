#!/usr/bin/perl
my $infile = $ARGV[0];
my $seq_list = "seqnos_all";
my $outfile = "seqn_out";

my $seqno;
my $filename = $infile;
$filename =~ s/^.*\///;

#print $filename."\n";

open (SEQLIST, "<$seq_list");
open (IN, "<$infile");
open (OUT, ">$outfile");

while (<SEQLIST>)
{
	chomp;
	if (m/$filename/)
	{
		s/^.*\s-\s//;
		$seq_no = $_;
#		print $seq_no."\n";
	}
}

while (<IN>)
{
	chomp;

	if (m/Puzzle\.create/)
	{
		s/seq\_no\:\s\'IW\_[0-9]+\'\,\s//;
		s/create\(/create\(seq\_no\: \'$seq_no\'\, /;
	}
	print OUT $_."\n";
}

close IN;
close OUT;
close SEQLIST;
