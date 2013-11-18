#!/usr/bin/perl

my $infile = "constructor_seeds_master.rb";
my $outfile = "bios";

open (IN, "<$infile");
open (OUT, ">$outfile");

my $placeholder1 = "Uh oh, I don't have a bio for ";
my $placeholder2 = ". If this is you, <a href='/contact'>send me one</a>.";
my $name = "";

while (<IN>)
{
	$name = $_;
	chomp $name;
	$name =~ s/^.*name\:\s\'//;
	$name =~ s/\s.*$//;
	s/bio\:\s\'.*\'/bio\: \'$placeholder1$name$placeholder2\'/;
	print OUT;
}

close IN;
close OUT;
