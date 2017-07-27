#!/usr/bin/perl

#my $spacey_cat = qr/\s+\K(cat)/;
#my $tgt = 'my cat has been to space';
#print "$tgt\n";
#if ($tgt =~ /$spacey_cat/) {
  #print "$1\n";
#}

#my $reg = qr/<span>\K[0-9\.]+$/;
my $regstr = '">\K[0-9.]+(?=/</a>)';
my $reg = qr/$regstr/;
while (<>) {
#	print $_;
	if (/$reg/) {
		print $_;
	}
}
