#!/usr/bin/perl

my $infile = $ARGV[0];
my $outfile = stats_out;

my $word_count = 0;
my $avg_word_length = 0;
my $block_count = 0;
my $white_square_count = 0;
my $grid = "";
my $blocks_only = "";
my $letters_only = "";

open (IN, "<$infile");
open (OUT, ">$outfile");

$word_count = 0;

while (<IN>)
{
	chomp;

	if (m/Entry\.create/)
	{ $word_count += 1; }
	
	if (m/Puzzle\.create/)
	{
		if (!m/avg_word_length\:\s/)
		{
			$grid = $_;
			$grid =~ s/^.*grid\:\s\'//;
			$grid =~ s/\'.*$//;
			$grid =~ s/\|//g;
			$blocks_only = $grid;
			$letters_only = $grid;
			$blocks_only =~ s/[A-Z]//g; #leave only .s for block_count
			$block_count = length $blocks_only;
			$letters_only =~ s/\.//g; #leave only letters for white_square_count
			$white_square_count = length $letters_only;

			$avg_word_length = sprintf("%.2f", (($white_square_count * 2) / $word_count));

			s/\)\s*$/\, word_count\: \'$word_count\'\, block_count\: \'$block_count\'\, white_square_count\: \'$white_square_count\'\, avg_word_length\: \'$avg_word_length\'\)/;
		}
	}
	print OUT $_."\n";
}

close IN;
close OUT;
