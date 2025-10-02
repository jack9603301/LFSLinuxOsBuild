echo "Step 73: Compile Perl 5.42.0(From Stage3 in chroot)"

cd /sources
tar xvf "./perl-5.42.0.tar.xz"
cd perl-5.42.0
export BUILD_ZLIB=False
export BUILD_BZIP2=0
sh Configure -des                                         \
             -Dprefix=/usr                                \
             -Dvendorprefix=/usr                          \
             -Dprivlib=/usr/lib/perl5/5.42/core_perl      \
             -Darchlib=/usr/lib/perl5/5.42/core_perl      \
             -Dsitelib=/usr/lib/perl5/5.42/site_perl      \
             -Dsitearch=/usr/lib/perl5/5.42/site_perl     \
             -Dvendorlib=/usr/lib/perl5/5.42/vendor_perl  \
             -Dvendorarch=/usr/lib/perl5/5.42/vendor_perl \
             -Dman1dir=/usr/share/man/man1                \
             -Dman3dir=/usr/share/man/man3                \
             -Dpager="/usr/bin/less -isR"                 \
             -Duseshrplib                                 \
             -Dusethreads

make
make install
unset BUILD_ZLIB BUILD_BZIP2
cd ../
rm -rfv perl-5.42.0
cd /
