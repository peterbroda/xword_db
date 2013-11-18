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

		if ($answer =~ m/\//) # multiple answers
		{
			my $answer2 = $answer;
			$answer =~ s/\/.*//;
			$answer2 =~ s/.*\///;
			$answer = "$answer')), Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('$answer2"; # kind of weird, but we'll add 2 answers using an injection
		}
#			print OUT $answer."\n";

		my $new_shit = ", :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('$answer'))]))";
		s/\)\)\s*$/$new_shit/;
	}
	print OUT $_."\n";
}

close IN;
close OUT;
