#!/usr/bin/perl

use version;
$o_ver_max    = version->parse('0.0');
$ver_max = "";
# read from pipe
while (<>) {
    # match only lines containing a firefox version 
    if (/([\d.]+b\d+)/) { # 53.0b12
        $_ = $ver_match   = $1;  # 53.0
        tr/b/./;
	$o_ver_line = version->parse($_);
	if ($o_ver_line > $o_ver_max) { $o_ver_max = $o_ver_line; $ver_max = $ver_match; }
    }
}
print "$ver_max\n";
