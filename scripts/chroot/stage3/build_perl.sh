echo "Step 28: Compile Perl 5.42.0(From Stage3 in chroot)"

cd /sources
tar xvf "./perl-5.42.0.tar.xz"
cd perl-5.42.0
sh Configure -des                                        \
             -Dprefix=/usr                               \
             -Dvendorprefix=/usr                         \
             -Duseshrplib                                \
             -Dprivlib=/usr/lib/perl5/5.42/core_perl     \
             -Darchlib=/usr/lib/perl5/5.42/core_perl     \
             -Dsitelib=/usr/lib/perl5/5.42/site_perl     \
             -Dsitearch=/usr/lib/perl5/5.42/site_perl    \
             -Dvendorlib=/usr/lib/perl5/5.42/vendor_perl \
             -Dvendorarch=/usr/lib/perl5/5.42/vendor_perl
make
make install
cd ../
rm -rfv perl-5.42.0
cd /
