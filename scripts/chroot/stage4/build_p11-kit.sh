echo "Step 112: Compile p11-kit 0.25.5(From Stage4 in chroot)"

cd /sources
tar xvf "p11-kit-0.25.5.tar.xz"
cd p11-kit-0.25.5
./configure --prefix=/usr --disable-static
sed '20,$ d' -i trust/trust-extract-compat &&

cat >> trust/trust-extract-compat << "EOF"
# Copy existing anchor modifications to /etc/ssl/local
/usr/libexec/make-ca/copy-trust-modifications

# Update trust stores
/usr/sbin/make-ca -r
EOF
mkdir p11-build &&
cd    p11-build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D trust_paths=/etc/pki/anchors &&
ninja
ninja install &&
ln -sfv /usr/libexec/p11-kit/trust-extract-compat \
        /usr/bin/update-ca-certificates
cd ../
rm -rfv p11-kit-0.25.5
cd /
