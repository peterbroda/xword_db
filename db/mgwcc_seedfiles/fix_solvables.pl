#!/usr/bin/perl

my $infile = $ARGV[0];
my $outfile = solvable_out;
open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	chomp;
	if (m/Entry\.create/)
	{
		my $answer = $_;
		$answer =~ s/^.*answer\:\s*\'//;
		$answer =~ s/\'\,\s.*$//;
		$answer =~ s/[\'\?\,\.\-\:\;\!\"\\]//g;
		$answer =~ s/\s//g;
		$answer = uc $answer;

		my $pre = $_;
		my $post = $_;

		$pre =~ s/(by\_grid\_text\(\').*\'\)\)\]\)\)/\1/;
		$post =~ s/^.*\_by\_grid\_text\(\'.*\'/\'/;

		print OUT join("", $pre, $answer, $post, "\n");
	}
	else
	{ print OUT $_."\n"; }
}

close IN;
close OUT;
