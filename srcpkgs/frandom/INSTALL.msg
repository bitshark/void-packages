frandom kernel module has been installed, which
is a higher-speed alternative to /dev/urandom.  
frandom is approx 10x faster than urandom in the
2.x and 3.x linux kernel series, as it uses the 
RC4 algorithm as a basis for its PRNG.

frandom has been loaded. it can be used via /dev/frandom.
example:  dd if=/dev/frandom of=/tmp/rand.bin bs=1M count=256

details: http://billauer.co.il/frandom.html

WARNING: frandom is based on patched RC4-Drop[8192].
While this particular varient has not been cracked,
RC4-based CSPRNGs should be used with caution in
systems which require cryptographically secure entropy.
https://blog.cryptographyengineering.com/2011/12/15/whats-deal-with-rc4/
