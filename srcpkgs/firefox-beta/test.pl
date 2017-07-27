use warnings;
use version;

$verA = "1.4.5b1";
$verB = "1.4.5b10";
$verA =~ tr/b/./;
$verB =~ tr/b/./;
print "$verA\n";
print "$verB\n";

my ($small, $large) =  (version->parse($verA), version->parse($verB));

print "larger\n"    if $small > $large;
print "smaller\n"   if $small < $large;
