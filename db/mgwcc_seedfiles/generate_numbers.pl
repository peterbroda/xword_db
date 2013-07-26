#!/usr/bin/perl

my $row;

for (1..13)
{
	$row = $_;
	for (1..13)
	{
		print join("_", $row, $_);
		print ":N|";
	}
}
