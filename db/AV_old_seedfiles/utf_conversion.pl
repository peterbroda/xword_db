#!/usr/bin/perl

use warnings;
use MIME::QuotedPrint qw( decode_qp );
use Encode qw( decode encode );

my $infile = $ARGV[0];
my $outfile = "utf_converted";

open (IN, "<$infile");
open (OUT, ">$outfile");

while (<IN>)
{
	my $this_convert = $_;
        $this_convert = decode_qp($this_convert);
        $this_convert = decode('iso-8859-1', $this_convert);
        $this_convert = encode('utf-8', $this_convert);


        # Do special character substitutions
        $this_convert =~ s/’/'/g;
        $this_convert =~ s/–/-/g;
        $this_convert =~ s/À/\&\#192\;/g;
        $this_convert =~ s/Ä/\&\#196\;/g;
        $this_convert =~ s/Â/\&\#194\;/g;
        $this_convert =~ s/È/\&\#200\;/g;
        $this_convert =~ s/É/\&\#201\;/g;
        $this_convert =~ s/Ê/\&\#202\;/g;
        $this_convert =~ s/Ë/\&\#203\;/g;
        $this_convert =~ s/Î/\&\#206\;/g;
        $this_convert =~ s/Ô/\&\#212\;/g;
        $this_convert =~ s/Ï/\&\#207\;/g;
        $this_convert =~ s/Ù/\&\#217\;/g;
        $this_convert =~ s/Û/\&\#219\;/g;
        $this_convert =~ s/Ü/\&\#220\;/g;
        $this_convert =~ s/Ÿ/\&Yuml\;/g;
        $this_convert =~ s/à/\&\#224\;/g;
        $this_convert =~ s/â/\&\#226\;/g;
        $this_convert =~ s/ã/\&\#227\;/g;
        $this_convert =~ s/ä/\&\#228\;/g;
        $this_convert =~ s/å/\&\#229\;/g;
        $this_convert =~ s/è/\&\#232\;/g;
        $this_convert =~ s/é/\&\#233\;/g;
        $this_convert =~ s/é/\&\#233\;/g;
        $this_convert =~ s/ê/\&\#234\;/g;
        $this_convert =~ s/ë/\&\#235\;/g;
        $this_convert =~ s/î/\&\#238\;/g;
        $this_convert =~ s/ï/\&\#239\;/g;
	$this_convert =~ s/í/\&\#237\;/g;
        $this_convert =~ s/ô/\&\#244\;/g;
        $this_convert =~ s/ó/\&\#243\;/g;
        $this_convert =~ s/ò/\&\#242\;/g;
        $this_convert =~ s/ù/\&\#249\;/g;
        $this_convert =~ s/ú/\&\#250\;/g;
        $this_convert =~ s/û/\&\#251\;/g;
        $this_convert =~ s/ü/\&\#252\;/g;
        $this_convert =~ s/ÿ/\&\#255\;/g;
        $this_convert =~ s/Ç/\&\#199\;/g;
        $this_convert =~ s/ç/\&\#231\;/g;
        $this_convert =~ s/«/\&\#171\;/g;
        $this_convert =~ s/»/\&\#187\;/g;
        $this_convert =~ s/¿/\&\#191\;/g;
        $this_convert =~ s/°/\&\#176\;/g;
	$this_convert =~ s/ñ/\&\#241\;/g;
	$this_convert =~ s/č/\&\#269\;/g;
	$this_convert =~ s/š/\&\#353\;/g;
        $this_convert =~ s/“/\"/g;
        $this_convert =~ s/”/\"/g;
	$this_convert =~ s/ö/\&\#246\;/g;
	$this_convert =~ s/á/\&\#225\;/g;
	$this_convert =~ s/ø/\&\#248\;/g;
	$this_convert =~ s/¡/\&\#161\;/g;
	$this_convert =~ s/¢/\&\#162\;/g;
	$this_convert =~ s/½/\&\#189\;/g;

	print OUT $this_convert;
}

close IN;
close OUT;
