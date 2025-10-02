echo "Step 101: Compile Texinfo 7.2(From Stage3 in chroot)"

cd /sources
tar xvf "./texinfo-7.2.tar.xz"
cd texinfo-7.2
sed 's/! $output_file eq/$output_file ne/' -i tp/Texinfo/Convert/*.pm
./configure --prefix=/usr
make
make install
make TEXMF=/usr/share/texmf install-tex
pushd /usr/share/info
  rm -v dir
  for f in *
    do install-info $f dir 2>/dev/null
  done
popd
cd ../
rm -rfv texinfo-7.2
cd /
