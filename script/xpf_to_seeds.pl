#!/usr/bin/perl

my $infile = $ARGV[0];
my $seedsfile = "seeds.rb";
my $outfile = "seeds_out.rb";
my $firstrow = 1;

my $title = "Default title";
my $grid = "";
my $author = "";
my $editor = "";

open (XPF_IN, "<$infile");
open (SEEDS_IN, "<$seedsfile");
open (OUT, ">$outfile");

while (<SEEDS_IN>)
{
	print OUT $_;
}

while (<XPF_IN>)
{
    # get the title
	if (m/\<Title\>/)
	{
		chomp;
		s/\s*//g;
		s/\<Title\>//g;
		s/\<\/Title\>//g;		
		$title = $_;
	}

    # get the author name
	if (m/\<Author\>/)
	{
		if (m/[Aa]gard/)
		{
			$author = "Erik Agard";
		}
		if (m/[Bb]roda/)
		{
			$author = "Peter Broda";
		}
	}

    # get the editor name
	if (m/\<Editor\>/)
	{
		if (m/[Aa]gard/)
		{
			$editor = "Erik Agard";
		}
		if (m/[Bb]roda/)
		{
			$editor = "Peter Broda";
		}
	}

    # get the grid
	if (m/\<Row\>/)
	{
		if (!$firstrow)
		{
			$grid = $grid."|";
		}
		chomp;
		s/\s*//g;
		s/\<Row\>//g;
		s/\<\/Row\>//g;
		$grid = $grid.$_;
		$firstrow = 0;
	}
}

print OUT qq{Puzzle.create(title: '$title', grid: '$grid')};

close SEEDS_IN;
close XPF_IN;
close OUT;
