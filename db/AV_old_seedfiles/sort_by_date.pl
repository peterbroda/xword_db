#!/usr/bin/perl

my $infile = "all_sorted";
my $outfile = "sorted_out";

open (IN, "<$infile");
open (OUT, ">$outfile");

my @all;
my %map;

while (<IN>)
{
	chomp;

	my $full = $_;
	s/AV\_Club\_xword\_//;
	s/\_[A-Z].*$//;

	my $year = $_;
	my $month = $_;
	my $day = $_;
	$year =~ s/[0-9]+\_[0-9]+\_([0-9]+)/\1/;
	$month =~ s/([0-9]+)\_[0-9]+\_[0-9]+/\1/;
	$day =~ s/[0-9]+\_([0-9]+)\_[0-9]+/\1/;
	$year = sprintf("%02d", $year);
	$month = sprintf("%02d", $month);
	$day = sprintf("%02d", $day);
	my $date = join("", $year, $month, $day);
	$map{$date} = $full;
	push(@all, $date);
}

@all = sort {$a <=> $b} @all;

my $count = 1;

foreach (@all)
{
	print OUT join("", $_, " - ", $map{$_}, " - AV_", $count, "\n");
	$count += 1;
}

close IN;
close OUT;
