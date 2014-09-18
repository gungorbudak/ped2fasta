# PED to FASTA converter, ped2fasta.pl
# Gets first 6 columns of each line as header line and the rest as
# the sequence replacing 0s with Ns and organizes it into a FASTA file

# Note 0s are for missing nucleotides defined by default in PLINK

# How to run: perl ped2fasta.pl "C:\path\to\PED_File"

# Author Güngör BUDAK
# http://www.gungorbudak.com

use strict;
my $path = $ARGV[0]; # Path to PED file (without .ped - should be given between double quotes)
my @columns;
my $sequence;
open(my $inf, "<", $file.".ped") or die $!;
open(my $ouf, ">", $file.".fasta") or die $!;
while (my $row = <$inf>) {
	# Each row belongs to one individual
	chomp $row;
	@columns = split(" ", $row); # Splits columns of each line into an array
	print $ouf ">", join(" ", @columns[0..5]), "\n"; # Joins and prints first 6 columns of each line
	$sequence = join("", @columns[6..$#columns]); # Joins all nucleotides
	$sequence =~ s/0/N/g; # Replaces 0s with Ns
	print $ouf $sequence, "\n"; # Prints the sequence
}
close $inf;
close $ouf;
