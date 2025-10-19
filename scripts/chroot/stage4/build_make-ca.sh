echo "Step 115: Compile Make CA 1.16.1(From Stage4 in chroot)"

cd /sources
tar xvf "make-ca-1.16.1.tar.gz"
cd make-ca-1.16.1
make install &&
install -vdm755 /etc/ssl/local
pushd /etc/ssl
cp /sources/ssl/certdata.txt /etc/ssl
make-ca -f
popd
cat > /etc/cron.weekly/update-pki.sh << "EOF" &&
#!/bin/bash
/usr/sbin/make-ca -g
EOF
chmod 754 /etc/cron.weekly/update-pki.sh
cd ../
rm -rfv make-ca-1.16.1
cd /
