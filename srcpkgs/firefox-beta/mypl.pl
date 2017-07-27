#!/usr/bin/perl

use version;
$ver_cutoff = "0";	# don't parse versions below this number
$ver_max = version->parse('0.0');
while ( <> ) {
    if (/([\d.]+)b(\d+)/) {
        #only match beta versions
#        print "$1b$2\t$1.$2\n";
	#next;
        $ver_major = $1;
        $ver_beta = $2;
        $ver_decimal = "$1.$2";
	print "$ver_decimal\n";
        if ($ver_major < $ver_cutoff) {
            next;
        } else {
            $ver_line = version->parse($ver_decimal);
            if ($ver_max < $ver_line) {
                print "line > max\t$ver_max\t$ver_line\n";
                $ver_max = $ver_line;
            } else {
                print "max > line\t$ver_max\t$ver_line\n";
		
            }
        }

    }
}
print "$ver_max\n";
if ($ver_max =~ /([\d.]+)\.(\d+)/) {
	print "$1b$2\n";
}
