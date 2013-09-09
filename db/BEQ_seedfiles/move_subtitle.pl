#!/usr/bin/perl
my $infile = $ARGV[0];
my $outfile = "subtitle_out";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	chomp;

	if (m/Puzzle\.create/)
	{
                my $pre = $_;
                my $post = $_;
                my $title = $_;
                $title =~ s/^.*title\:\s\'//;
                $post =~ s/^.*title\:\s\'//;
                $title =~ s/\'\,\sgrid\:.*$//;
                $pre =~ s/\'\,\sgrid\:.*$//;
                $post =~ s/\Q$title\E//;
                $pre =~ s/\Q$title\E//;
		$title =~ s/\s*--\s*(.*)/\'\, subtitle\: \'\1/;
		print OUT join("", $pre, $title, $post, "\n");
	}
	else
	{ print OUT $_."\n"; }
}

close IN;
close OUT;
