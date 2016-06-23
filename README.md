# ped2fasta - PED to FASTA converter

Gets first 6 columns of each line as header line and the rest as the sequence replacing 0s with Ns and organizes it into a FASTA file.

Note that 0s are for missing nucleotides defined by default in PLINK.

## How to run

Download the package, go to its directory using CMD or Terminal and run the script with your PED file as shown below. Note that the path to the PED file should be absolute and `.ped` extension should be omitted.

    perl ped2fasta.pl "C:\path\to\PED_File"

## Author
Güngör BUDAK, http://www.gungorbudak.com
